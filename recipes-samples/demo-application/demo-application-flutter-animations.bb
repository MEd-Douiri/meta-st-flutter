DESCRIPTION = "Add support of flutter animations on Demo Launcher"
HOMEPAGE = "wiki.st.com"
LICENSE = "BSD-3-Clause"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/BSD-3-Clause;md5=550794465ba0ec5312d6919e203a55f9"

DEPENDS = "demo-launcher event-gtk-player"

PV = "2.0"

SRC_URI = " \
    file://launch_flutter_animations.sh \
    file://ST1088_flutter.png \
    file://070-Flutter-animations.yaml \
    "

do_configure[noexec] = "1"
do_compile[noexec] = "1"

do_install() {
    install -d ${D}${prefix}/local/demo/application/flutter/bin
    install -d ${D}${prefix}/local/demo/application/flutter/pictures

    # install yaml file
    install -m 0644 ${WORKDIR}/*.yaml ${D}${prefix}/local/demo/application/
    # install pictures
    install -m 0644 ${WORKDIR}/*.png ${D}${prefix}/local/demo/application/flutter/pictures
    # script
    install -m 0755 ${WORKDIR}/*.sh ${D}${prefix}/local/demo/application/flutter/bin
}

FILES_${PN} += "${prefix}/local/demo/application/"
RDEPENDS_${PN} += "event-gtk-player demo-launcher"