FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI = "git://github.com/sony/flutter-embedded-linux.git;protocol=https;branch=master \
           file://0001-flutter-linux-updates.patch"
           
SRCREV = "c01f99b8f43968d02633ec9e630e2ff6749939ba"
