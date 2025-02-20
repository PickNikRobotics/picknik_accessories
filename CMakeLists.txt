cmake_minimum_required(VERSION 3.22)
project(picknik_accessories)

find_package(ament_cmake REQUIRED)
find_package(ament_index_cpp REQUIRED)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/Modules")

include(InstallPicknikAccessories)

install(
  DIRECTORY
    descriptions
    macros
    mujoco_assets
  DESTINATION
    share/${PROJECT_NAME}
)

install(FILES "${CMAKE_CURRENT_SOURCE_DIR}/cmake/Modules/InstallPicknikAccessories.cmake"
        DESTINATION lib/cmake/picknik_accessories/Modules)

install(FILES "${CMAKE_CURRENT_SOURCE_DIR}/cmake/picknik_accessoriesConfig.cmake"
        DESTINATION lib/cmake/picknik_accessories)

ament_export_dependencies(ament_cmake ament_index_cpp)

# TODO: is this lint process hanging somehow?
# if(BUILD_TESTING)
# find_package(ament_lint_auto REQUIRED)
# ament_lint_auto_find_test_dependencies()
# endif()

ament_environment_hooks("${CMAKE_CURRENT_SOURCE_DIR}/env-hooks/${PROJECT_NAME}.dsv.in")


ament_package()
