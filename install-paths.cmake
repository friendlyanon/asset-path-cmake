get_filename_component(absolute_prefix "${CMAKE_INSTALL_PREFIX}" ABSOLUTE)
file(WRITE "${absolute_prefix}/${cmakedir}/${package}Paths.cmake" "\
set(ASSET_PATH [[${absolute_prefix}/${datadir}/${package}]])
")
