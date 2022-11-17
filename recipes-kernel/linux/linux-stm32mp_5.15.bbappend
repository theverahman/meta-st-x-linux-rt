FILESEXTRAPATHS:prepend := "${THISDIR}:${THISDIR}/${PN}:"

SRC_URI:append:stm32mp1rt = " \
    file://${LINUX_VERSION}/${LINUX_VERSION}.${LINUX_SUBVERSION}/10001-RT-Rebase-5.15.65-RT-49.patch \
    file://${LINUX_VERSION}/${LINUX_VERSION}.${LINUX_SUBVERSION}/0023-5.15-stm32mp-rt-49-r1-CLOCK.patch \
    file://${LINUX_VERSION}/${LINUX_VERSION}.${LINUX_SUBVERSION}/0024-5.15-stm32mp-rt-49-r1-DMA.patch \
    file://${LINUX_VERSION}/${LINUX_VERSION}.${LINUX_SUBVERSION}/0025-5.15-stm32mp-rt-49-r1-MFD.patch \
    file://${LINUX_VERSION}/${LINUX_VERSION}.${LINUX_SUBVERSION}/0026-5.15-stm32mp-rt-49-r1-NET-TTY.patch \
    file://${LINUX_VERSION}/${LINUX_VERSION}.${LINUX_SUBVERSION}/0027-5.15-stm32mp-rt-49-r1-DEVICETREE.patch \
    file://${LINUX_VERSION}/${LINUX_VERSION}.${LINUX_SUBVERSION}/0028-5.15-stm32mp-rt-49-r1-CONFIG.patch \
    "

LINUX_RELEASE = "r1"
PV = "${LINUX_VERSION}.${LINUX_SUBVERSION}.rt49-${LINUX_TARGET}-${LINUX_RELEASE}"
