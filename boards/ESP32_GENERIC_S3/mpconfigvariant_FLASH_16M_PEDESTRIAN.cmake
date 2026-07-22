set(SDKCONFIG_DEFAULTS
    ${SDKCONFIG_DEFAULTS}
    ${MICROPY_PORT_DIR}/boards/sdkconfig.240mhz
    ${MICROPY_PORT_DIR}/boards/sdkconfig.spiram_oct
    ESP32_GENERIC_S3/sdkconfig.flash_16m
)

list(APPEND MICROPY_DEF_BOARD
    MICROPY_HW_BOARD_NAME="Generic ESP32S3 16MB Octal-SPIRAM pedestrian detector"
)

# Build only the model required by the application.  Keeping the switch in the
# variant file is the method recommended by mp_esp_dl_models.
set(MP_DL_PEDESTRIAN_DETECTOR_ENABLED 1)
