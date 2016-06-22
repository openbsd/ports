# $OpenBSD: Makefile,v 1.4 2016/06/22 09:54:45 ajacoutot Exp $

COMMENT=	Lumina Desktop Environment

GH_PROJECT=	lumina
PATCHSET=	1

SHARED_LIBS +=  LuminaUtils               1.0 # 1.0

WANTLIB += GL Qt5Concurrent Qt5Core Qt5Gui Qt5Multimedia Qt5MultimediaWidgets
WANTLIB += Qt5Network Qt5Svg Qt5Widgets Qt5X11Extras Xdamage c
WANTLIB += m pthread xcb xcb-composite xcb-damage xcb-ewmh xcb-icccm
WANTLIB += xcb-image xcb-util

MODULES=	x11/qt5

RUN_DEPENDS=	devel/desktop-file-utils \
		multimedia/gstreamer1/plugins-base \
		x11/kde4/oxygen-icons \
		x11/fluxbox \
		x11/numlockx \
		x11/xscreensaver

MAKE_FLAGS=	LIBLuminaUtils_VERSION=${LIBLuminaUtils_VERSION}
FAKE_FLAGS=	INSTALL_ROOT=${DESTDIR}

pre-configure:
	sed -i 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/src-qt5/core/libLumina/LuminaXDG.cpp \
		${WRKSRC}/src-qt5/core-utils/lumina-config/mainUI.cpp \
		${WRKSRC}/src-qt5/core/lumina-desktop/SettingsMenu.cpp
	sed -i 's,/etc/luminaDesktop.conf,${SYSCONFDIR}/luminaDesktop.conf,g' \
		${WRKSRC}/src-qt5/core/libLumina/LuminaUtils.cpp

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/qmake-qt5 CONFIG+="configure NO_I18N"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lumina
	mv ${PREFIX}/etc/luminaDesktop.conf.dist \
		${PREFIX}/share/examples/lumina/
	rmdir ${PREFIX}/etc

.include <bsd.port.mk>
