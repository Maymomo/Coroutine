cc_library(
    name = "googlemock",
    srcs =  ["googlemock/src/gmock-all.cc"],
    hdrs =  glob(["googlemock/include/gmock/*.h",
             "googlemock/include/gmock/internal/*.h",
             "googlemock/include/gmock/internal/custom/*.h",
             "googlemock/src/*.cc",
             "googlemock/src/*.h"]
            ),
    includes = ["googlemock/include",
                "googlemock/src",
                "googlemock"],
    copts = ["-pthread"],
    visibility = ["//visibility:public"]
)

cc_library(
    name = "gtest_main",
    srcs = ["googlemock/src/gmock_main.cc"],
    deps = [":googletest",
            ":googlemock"],
    copts = ["-pthread"],
    visibility = ["//visibility:public"]
)

cc_library(
    name = "googletest",
    srcs =  ["googletest/src/gtest-all.cc"],
    hdrs =  glob(["googletest/include/gtest/*.h",
             "googletest/include/gtest/internal/*.h",
             "googletest/src/*.cc",
             "googletest/src/*.h"]
            ),
    includes = ["googletest/include",
                "googletest/src",
                "googletest"],
    copts = ["-pthread"],
    visibility = ["//visibility:public"]
)
