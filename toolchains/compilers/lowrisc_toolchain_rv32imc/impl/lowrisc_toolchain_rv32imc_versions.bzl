
_PLATFORM_SPECIFIC_CONFIGS_9 = {
    "linux": {
        "full_version": "9.2.0",
        "remote_compiler": {
            "url": "https://github.com/lowRISC/lowrisc-toolchains/releases/download/20220524-1/lowrisc-toolchain-rv32imcb-20220524-1.tar.xz",
            "sha256": "a4579324083577a0f20cf4b03d11c6a7563265ced0ed2f7b51c3722d80fd24c4",
            "strip_prefix": "lowrisc-toolchain-rv32imcb-20220524-1",
        },
    },
}

TOOLCHAIN_VERSIONS = {
    "9": _PLATFORM_SPECIFIC_CONFIGS_9,
}

def get_platform_specific_config(version, os_name):
    if version not in TOOLCHAIN_VERSIONS:
        fail("Toolchain configuration not available for version: ", version)
    if os_name not in TOOLCHAIN_VERSIONS[version].keys():
        fail("OS configuration not available for: {}".format(os_name))
    return TOOLCHAIN_VERSIONS[version][os_name]
