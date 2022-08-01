inherit flutter-app

do_install() {

    install -d ${D}${FLUTTER_INSTALL_DIR}/flutter_assets
    cp -r ${S}/${FLUTTER_APPLICATION_PATH}/build/flutter_assets/* ${D}${FLUTTER_INSTALL_DIR}/flutter_assets/

    if ${@bb.utils.contains('FLUTTER_RUNTIME', 'release', 'true', 'false', d)} || \
       ${@bb.utils.contains('FLUTTER_RUNTIME', 'profile', 'true', 'false', d)}; then
        cp ${S}/${FLUTTER_APPLICATION_PATH}/libapp.so ${D}${FLUTTER_INSTALL_DIR}/flutter_assets
    fi

       
    if [[ "${FLUTTER_BUILD_ARGS}" =~ .*"linux".* ]]; then

        if [ -n "${FLUTTER_REMOVE_LINUX_BUILD_ARTIFACTS}" ]; then
            rm ${D}/usr/${PUBSPEC_APPNAME} | true
            rm -rf ${D}${libdir}/*.so | true
        else
            # expecting default "release" build
            mv ${D}/usr/${PUBSPEC_APPNAME} ${D}${bindir}/ | true
            rm -rf ${D}${bindir}/${PUBSPEC_APPNAME} | true
            rm -rf ${D}${libdir}/*.so | true
        fi
    fi
}