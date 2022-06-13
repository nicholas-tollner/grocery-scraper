set(CMAKE_PREFIX_PATH $ENV{CURL})

find_path(
        CURL_INCLUDE_DIR
        NAMES curl.h curlver.h easy.h header.h mprintf.h multi.h options.h stdcheaders.h system.h typecheck-gcc.h urlapi.h
        PATHS ${CMAKE_PREFIX_PATH}
        PATH_SUFFIXES Include/curl
)


find_library(CURL_LIBRARY
        NAMES libcurl
        PATHS ${CMAKE_PREFIX_PATH}
        PATH_SUFFIXES lib
        NO_DEFAULT_PATH
)