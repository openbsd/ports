COMMENT =	graphical audio and video SIP phone

V =		5.2.4
MODULE =	linphone-desktop
PKGNAME =	linphone-${V}

SITES.gitlab = https://gitlab.linphone.org/BC/public/

DIST_TUPLE +=	gitlab external ispell 05574fe160222c3d0b6283c1433c9b087271fad1 external/ispell

MODULES +=	x11/qt5
CONFIGURE_ARGS =-DENABLE_STATIC=NO \
		-DENABLE_QT_KEYCHAIN=NO \
		-DENABLE_UNIT_TESTS=NO

LIB_DEPENDS =	telephony/linphone/bctoolbox \
		telephony/linphone/mediastreamer2 \
		telephony/linphone/ortp \
		telephony/linphone/liblinphone \
		telephony/linphone/belcard \
		x11/qt5/qtsvg \
		x11/qt5/qtspeech \
		x11/qt5/qtquickcontrols2

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/qt5/qtquickcontrols \
		x11/qt5/qtgraphicaleffects \
		x11/gtk+4,-guic

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Multimedia
WANTLIB += Qt5Network Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2
WANTLIB += Qt5Svg Qt5Test Qt5TextToSpeech Qt5Widgets bctoolbox belcard
WANTLIB += belle-sip belr c linphone linphone++ m mediastreamer2 ortp sqlite3 xml2

post-patch:
	echo "project(linphoneqt VERSION ${V})\nset(FULL_VERSION ${V})" > ${WRKSRC}/linphone-app/linphoneqt_version.cmake

# from https://salsa.debian.org/pkg-voip-team/linphone-stack/linphone-desktop/-/blob/master/debian/rules#L14
post-configure:
	sed -i '/INSTALL.*linphone-sdk/d' ${WRKBUILD}/linphone-app/cmake_builder/linphone_package/cmake_install.cmake
	sed -i "s|${WRKBUILD}/OUTPUT|${TRUEPREFIX}|" ${WRKBUILD}/linphone-app/cmake_install.cmake
	sed -i "s|${WRKBUILD}/OUTPUT|${TRUEPREFIX}|" ${WRKBUILD}/cmake_install.cmake
.include <bsd.port.mk>
