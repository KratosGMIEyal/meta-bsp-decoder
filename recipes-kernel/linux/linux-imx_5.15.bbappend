SRCBRANCH = "lf-5.15.y"
KERNEL_SRC ?= "git://github.com/nxp-imx/linux-imx.git;protocol=https;branch=${SRCBRANCH}"

SRC_URI += "file://0001-removed-promisc-check-on-eth1.patch \
            file://0002-named-gpio.patch \
            file://0003-embedded-definitions.patch \
            file://0004-whitelist-usb-support.patch \
            file://0005-usb-whitelist-add-lan-7800-and-7801.patch \
            file://0006-changed-UART-pins-for-UART0.patch \
            file://0007-add-uart-4.patch \
            file://0008-Load-FPGA-gpio-config.patch \
            file://0009-gpio-interrupt-kernel-dts-update.patch \
            file://0010-add-GPT.patch \
            file://0011-support-uart-debug-arm-reset-LAN7800.patch \
            file://0012-load-fpga-ARM-FPGA-Uarts-GPIO-interrupt-Spi-data.patch \
            file://0013-fixed-link-ethernet.patch \
            file://0014-change-UART2-DTE-mode-flash-to-MTP.patch \
            file://0015-fix-the-spidev-problem.patch \
            file://0016-support-2XSRAM-DTS.patch \
            file://0017-fix-the-other-DEVICETREE.patch \
            file://defconfig.cfg"

do_configure:append() {
    cat ${WORKDIR}/defconfig.cfg >> ${B}/.config
}
