include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(  #вводим информацию о пакете
    PACKAGE_NAME
    print
    VERSION
    "0.1.0.0"
    URL
    "https://github.com//lab09/archive/v0.1.0.0.tar.gz"
    SHA1
    4e5650281f7ca84e6d38af4b91787c177f6e7ebb
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)  # sceme for cmake build only

hunter_cmake_args(
    print
    CMAKE_ARGS
    BUILD_EXAMPLES=NO
    BUILD_TESTS=NO
)
hunter_cacheable(print) # give permission to cache package
hunter_download(PACKAGE_NAME print) #add package to project
