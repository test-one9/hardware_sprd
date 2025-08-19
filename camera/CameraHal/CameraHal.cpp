#include "SprdCameraHWInterface.h"

namespace android {

struct CameraInfo sCameraInfo[] = {
    {
        CAMERA_FACING_BACK,
        90,  // orientation
    }
};

extern "C" {
    int HAL_getNumberOfCameras() {
        return sizeof(sCameraInfo) / sizeof(sCameraInfo[0]);
    }

    void HAL_getCameraInfo(int cameraId, struct camera_info *info) {
        memcpy(info, &sCameraInfo[cameraId], sizeof(struct camera_info));
    }

    int HAL_open(const struct hw_module_t* module, const char* id, struct hw_device_t** device) {
        return SprdCameraHWInterface::openCamera(module, id, device);
    }
}
} // namespace android
