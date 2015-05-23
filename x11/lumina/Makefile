# $OpenBSD: Makefile,v 1.17 2015/05/23 16:34:41 czarkoff Exp $

COMMENT=	Lumina Desktop Environment


V=		0.8.4
GH_ACCOUNT=	pcbsd
GH_PROJECT=	lumina
GH_TAGNAME=	v${V}-Release-P1
DISTNAME=	lumina-${V}
REVISION=	0

SHARED_LIBS +=  LuminaUtils               1.0 # 1.0

CATEGORIES=	x11

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =   Yes

WANTLIB += GL Qt5Core Qt5Gui Qt5Multimedia Qt5MultimediaWidgets
WANTLIB += Qt5Network Qt5Widgets Qt5X11Extras X11 Xcomposite Xdamage
WANTLIB += Xrender c m pthread xcb xcb-composite xcb-damage xcb-ewmh
WANTLIB += xcb-icccm xcb-image

MODULES=	x11/qt5

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/kde4/oxygen-icons \
		x11/fluxbox \
		x11/numlockx \
		x11/xscreensaver

NO_TEST=	Yes

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
	cd ${WRKSRC} && ${LOCALBASE}/bin/qmake-qt5

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lumina
	mv ${PREFIX}/etc/luminaDesktop.conf.dist \
		${PREFIX}/share/examples/lumina/
	rmdir ${PREFIX}/etc

.include <bsd.port.mk>
