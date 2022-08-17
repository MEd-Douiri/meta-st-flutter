SUMMARY = "Flutter animations Application"
DESCRIPTION = "Flutter animations Application"
AUTHOR = "Google"
HOMEPAGE = "https://github.com/flutter/samples/tree/main/animations"
BUGTRACKER = "https://github.com/flutter/samples/issues"
SECTION = "graphics"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=b7eeb61b41ae366e94383bca5e113fce"

SRCREV = "${AUTOREV}"
SRC_URI = "git://github.com/flutter/samples.git;lfs=0;branch=main;protocol=https;destsuffix=git"

S = "${WORKDIR}/git"

PUBSPEC_APPNAME = "animations"
FLUTTER_APPLICATION_PATH = "animations"
FLUTTER_APPLICATION_INSTALL_PREFIX = "/flutter"

inherit flutter-app-custom
