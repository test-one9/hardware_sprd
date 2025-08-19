#include <stdlib.h>
#include <stdint.h>
#include <utils/Log.h>
#include <binder/MemoryHeapBase.h>
#include <binder/IMemory.h>
#include <binder/Parcel.h>
#include <ion/ion.h>

#include "MemoryHeapIon.h"

namespace android {

MemoryHeapIon::MemoryHeapIon(size_t size, uint32_t flags, const char* device) {
    ion_user_handle_t ion_hnd;
    int fd = ion_open();
    
    if (fd < 0) {
        ALOGE("ion_open failed");
        return;
    }
    
    int ret = ion_alloc(fd, size, 0, ION_HEAP_SYSTEM_MASK, 0, &ion_hnd);
    if (ret) {
        ALOGE("ion_alloc failed");
        ion_close(fd);
        return;
    }
    
    ret = ion_share(fd, ion_hnd, &mIonFd);
    ion_close(fd);
    
    if (ret) {
        ALOGE("ion_share failed");
        return;
    }
    
    setDevice("/dev/ion");
    init(mIonFd, NULL, size, flags, NULL);
}

MemoryHeapIon::~MemoryHeapIon() {
    if (mIonFd >= 0) close(mIonFd);
}

} // namespace android
