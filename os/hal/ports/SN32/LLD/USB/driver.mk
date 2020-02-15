ifeq ($(USE_SMART_BUILD),yes)
ifneq ($(findstring HAL_USE_USB TRUE,$(HALCONF)),)
PLATFORMSRC += $(CHIBIOS_CONTRIB)/os/hal/ports/SN32/LLD/USB/hal_usb_lld.c
endif
else
PLATFORMSRC += $(CHIBIOS_CONTRIB)/os/hal/ports/SN32/LLD/USB/hal_usb_lld.c
endif

PLATFORMSRC += $(CHIBIOS_CONTRIB)/os/hal/ports/SN32/LLD/USB/hidram.c
PLATFORMSRC += $(CHIBIOS_CONTRIB)/os/hal/ports/SN32/LLD/USB/hiduser.c
# PLATFORMSRC += $(CHIBIOS_CONTRIB)/os/hal/ports/SN32/LLD/USB/usbdesc.c
PLATFORMSRC += $(CHIBIOS_CONTRIB)/os/hal/ports/SN32/LLD/USB/usbepfunc.c
PLATFORMSRC += $(CHIBIOS_CONTRIB)/os/hal/ports/SN32/LLD/USB/usbhw.c
PLATFORMSRC += $(CHIBIOS_CONTRIB)/os/hal/ports/SN32/LLD/USB/usbram.c
PLATFORMSRC += $(CHIBIOS_CONTRIB)/os/hal/ports/SN32/LLD/USB/usbuser.c

PLATFORMINC += $(CHIBIOS_CONTRIB)/os/hal/ports/SN32/LLD/USB
