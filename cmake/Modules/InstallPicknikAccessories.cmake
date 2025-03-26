function(install_picknik_accessories)
    set(options)
    set(oneValueArgs DESTINATION)
    cmake_parse_arguments(INSTALL_PICKNIK "" "${oneValueArgs}" "" ${ARGN})

    if(NOT INSTALL_PICKNIK_DESTINATION)
        message(FATAL_ERROR "DESTINATION argument is required for install_picknik_accessories()")
    endif()

    # Check if PICKNIK_ACCESSORIES_SHARE_DIR is defined
    if(NOT DEFINED PICKNIK_ACCESSORIES_SHARE_DIR)
        message(FATAL_ERROR "PICKNIK_ACCESSORIES_SHARE_DIR is not defined.")
    endif()

    # Verify that the assets directory exists
    if(NOT EXISTS "${PICKNIK_ACCESSORIES_SHARE_DIR}")
        message(FATAL_ERROR "Source directory '${PICKNIK_ACCESSORIES_SHARE_DIR}' does not exist.")
    endif()

    # Install the XML files from the assets directory to the specified destination
    install(DIRECTORY "${PICKNIK_ACCESSORIES_SHARE_DIR}/"
            DESTINATION "${INSTALL_PICKNIK_DESTINATION}"
            FILES_MATCHING PATTERN "*.xml")
endfunction()
