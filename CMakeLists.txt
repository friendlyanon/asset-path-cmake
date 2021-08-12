cmake_minimum_required(VERSION 3.14)

project(asset NONE)

set(CMAKE_INSTALL_LIBDIR lib CACHE PATH "")

include(GNUInstallDirs)

# find_package(<package>) call for consumers to find this project
set(package asset)

set(
    asset_INSTALL_CMAKEDIR "${CMAKE_INSTALL_DATADIR}/${package}"
    CACHE PATH "CMake package config location relative to the install prefix"
)
mark_as_advanced(gif_engine_INSTALL_CMAKEDIR)

install(
    FILES asset.txt
    DESTINATION "${CMAKE_INSTALL_DATAROOTDIR}/${package}"
    COMPONENT asset_Runtime
)

install(
    FILES install-config.cmake
    DESTINATION "${asset_INSTALL_CMAKEDIR}"
    RENAME "${package}Config.cmake"
    COMPONENT asset_Development
)

install(CODE "\
  set(package [[${package}]])
  set(datarootdir [[${CMAKE_INSTALL_DATAROOTDIR}]])
  set(cmakedir [[${asset_INSTALL_CMAKEDIR}]])
" COMPONENT asset_Development)

install(SCRIPT install-paths.cmake COMPONENT asset_Development)
