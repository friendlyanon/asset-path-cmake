file(WRITE "${CMAKE_INSTALL_PREFIX}/${cmakedir}/${package}Paths.cmake" "\
set(ASSET_PATH [[${CMAKE_INSTALL_PREFIX}/${datarootdir}/${package}]])
")
