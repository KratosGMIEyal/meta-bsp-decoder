FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-update-read-status-register.patch \
            file://0001-Update-SF-PROTECT.patch \
            file://0001-Decoder-PCB-Intial-BringUP.patch \
            file://0001-fix-size-LPDDR-TO-1GB.patch \
            file://0001-change-UART2-TO-DTE.patch \
            "

SRC_URI += "file://defconfig.cfg"

do_configure:append() {
    cat ${WORKDIR}/defconfig.cfg >> ${B}/.config
}
