include flutter-linux-plugins.inc

FLUTTER_RUNTIME = "profile"
inherit flutter-app-custom
SRCREV = "da096d27ee8e5e74c18eb97f91ac03021363ef5b"
SRC_URI = "git://github.com/meta-flutter/tests.git;lfs=1;branch=main;protocol=https;destsuffix=git \
           file://lsb-release"

S = "${WORKDIR}/git"

PUBSPEC_APPNAME = "linux_plugins"
FLUTTER_APPLICATION_PATH = "plugins"
FLUTTER_APPLICATION_INSTALL_PREFIX = "/flutter"
