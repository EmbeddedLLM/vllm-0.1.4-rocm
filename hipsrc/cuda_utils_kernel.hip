#include <hip/hip_runtime.h>

int get_device_attribute(
    int attribute,
    int device_id)
{
    int device, value;
    if (device_id < 0) {
        hipGetDevice(&device);
    }
    else {
        device = device_id;
    }
    hipDeviceGetAttribute(&value, static_cast<hipDeviceAttribute_t>(attribute), device);
    return value;
}
