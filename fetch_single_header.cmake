function(fetch_single_header URL NAME DOWNLOAD_DIR)
  if (NOT DOWNLOAD_DIR)
    set(DOWNLOAD_DIR deps)
  endif()

  set(DEPS_DIR ${CMAKE_SOURCE_DIR}/${DOWNLOAD_DIR})
  set(INSTALL_DIR ${DEPS_DIR}/${NAME})

  if (NOT EXISTS ${DEPS_DIR})
    file(MAKE_DIRECTORY ${DEPS_DIR})
  endif()

  message(STATUS "Downloading ${NAME} from ${URL}")

  file(DOWNLOAD ${URL} ${INSTALL_DIR}/${NAME}.h)

  add_library(${NAME} INTERFACE)
  target_include_directories(${NAME} INTERFACE ${INSTALL_DIR})

  message(STATUS "${NAME} added to project")
endfunction()
