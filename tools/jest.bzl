load("@npm//jest-cli:index.bzl", _jest_test = "jest_test")

def jest_test(name, srcs = []):
    paths = ["--runTestsByPath $(rootpath %s)" % src for src in srcs]

    _jest_test(
        name = name,
        data = srcs + [
            "//:jest.config.js",
        ],
        templated_args = paths + [
            "--config $(rootpath //:jest.config.js)",
            "--no-cache",
            "--no-watchman",
            "--ci",
            "--colors",
        ],
    )
