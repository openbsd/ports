# $OpenBSD: Makefile,v 1.13 2015/02/21 05:14:58 ajacoutot Exp $

COMMENT=	Lumina Desktop Environment

GITV=		1424293520
DISTNAME=	lumina-${GITV}
PKGNAME=	lumina-0.8.2.${GITV}
EXTRACT_SUFX=	.tar.bz2
WRKDIST=	${WRKDIR}/lumina

SHARED_LIBS +=  LuminaUtils               1.0 # 1.0

CATEGORIES=	x11

HOMEPAGE=	https://github.com/pcbsd/lumina

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =   Yes

WANTLIB += GL Qt5Core Qt5DBus Qt5Gui Qt5Multimedia Qt5MultimediaWidgets
WANTLIB += Qt5Network Qt5Widgets Qt5X11Extras X11 Xcomposite Xdamage
WANTLIB += Xrender c m pthread xcb xcb-damage xcb-ewmh xcb-icccm

MASTER_SITES=	http://www.pcbsd.org/~kris/software/ \
		ftp://ftp.pcbsd.org/pub/software/

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
