load("//devices:device_config.bzl", "device_config")

RV32IMC_DEVICE_CONFIG = device_config(
    cpu = "rv32imc",
    endian = "little",
    float_abi = "soft",
    fpu = "none",
)

RISCV32_DEVICE_CONFIGS = [RV32IMC_DEVICE_CONFIG]
