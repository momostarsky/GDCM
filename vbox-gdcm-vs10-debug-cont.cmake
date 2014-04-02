# Client maintainer: mathieu malaterre gmail . com

set(CTEST_SITE "vbox_winvisa")
set(CTEST_BUILD_NAME "WinVista32-vs10-cont")
set(CTEST_BUILD_CONFIGURATION Debug)
set(CTEST_CMAKE_GENERATOR "NMake Makefiles")
#set(dashboard_root_name "MyTests")
set(dashboard_source_name "gdcm-cont")
set(dashboard_binary_name "gdcm-build-debug-32-nightly")
set(dashboard_model Continuous)

SET(ENV{CFLAGS} "/W4")
SET(ENV{CXXFLAGS} "/W4")

macro(dashboard_hook_init)
  set( dashboard_cache "
    GDCM_BUILD_SHARED_LIBS:BOOL=ON
    GDCM_BUILD_APPLICATIONS:BOOL=ON
    GDCM_BUILD_EXAMPLES:BOOL=ON
    GDCM_USE_SYSTEM_OPENSSL:BOOL=OFF
    GDCM_USE_VTK:BOOL=ON
    VTK_DIR:PATH=C:/Dashboards/VTK-6.1.0/bin
    "
    )
endmacro(dashboard_hook_init)

include(${CTEST_SCRIPT_DIRECTORY}/gdcm_common.cmake)
