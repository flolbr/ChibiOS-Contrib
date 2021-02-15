ifeq ($(USE_SMART_BUILD),yes)
ifneq ($(findstring HAL_USE_CT TRUE,$(HALCONF)),)
PLATFORMSRC += $(CHIBIOS_CONTRIB)/os/hal/ports/SN32/LLD/CT/hal_st_lld.c
endif
else
PLATFORMSRC += $(CHIBIOS_CONTRIB)/os/hal/ports/SN32/LLD/CT/hal_st_lld.c
endif

#PLATFORMSRC += $(CHIBIOS_CONTRIB)/os/hal/ports/SN32/LLD/CT/CT16B0.c
PLATFORMSRC += $(CHIBIOS_CONTRIB)/os/hal/ports/SN32/LLD/CT/CT32B0.c

PLATFORMINC += $(CHIBIOS_CONTRIB)/os/hal/ports/SN32/LLD/CT