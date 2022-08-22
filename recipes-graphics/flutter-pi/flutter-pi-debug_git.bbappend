FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI = "git://github.com/ardera/flutter-pi.git;protocol=https;branch=master \
           file://0001-flutter-pi-update.patch"
           
SRCREV = "cf57b52a5848439dd4a53b657cbcb06706340ee9"