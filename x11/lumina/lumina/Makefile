# $OpenBSD: Makefile,v 1.3 2016/02/27 12:41:25 ajacoutot Exp $

COMMENT=	Lumina Desktop Environment

GH_PROJECT=	lumina

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
	perl -pi -e 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/libLumina/LuminaXDG.cpp \
		${WRKSRC}/lumina-config/mainUI.cpp \
		${WRKSRC}/lumina-desktop/SettingsMenu.cpp
	perl -pi -e 's,/etc/luminaDesktop.conf,${SYSCONFDIR}/luminaDesktop.conf,g' \
		${WRKSRC}/libLumina/LuminaUtils.cpp

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/qmake-qt5 CONFIG+="configure NO_I18N"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lumina
	mv ${PREFIX}/etc/luminaDesktop.conf.dist \
		${PREFIX}/share/examples/lumina/
	rmdir ${PREFIX}/etc

.include <bsd.port.mk>
