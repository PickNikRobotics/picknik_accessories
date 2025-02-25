# Get the absolute path to the package prefix
get_filename_component(PICKNIK_ACCESSORIES_PREFIX "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

# Define the share directory where assets are installed
set(PICKNIK_ACCESSORIES_SHARE_DIR "${PICKNIK_ACCESSORIES_PREFIX}/share/picknik_accessories/mujoco_assets")

# Include the InstallPicknikAccessories module
include("${CMAKE_CURRENT_LIST_DIR}/Modules/InstallPicknikAccessories.cmake")
