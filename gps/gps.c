#include <hardware/gps.h>

static int init(gps_callbacks* callbacks) { return 0; }
static void start() {}
static void stop() {}

static const GpsInterface gpsInterface = {
    .size = sizeof(GpsInterface),
    .init = init,
    .start = start,
    .stop = stop,
};

const GpsInterface* gps_get_hardware_interface() {
    return &gpsInterface;
}
