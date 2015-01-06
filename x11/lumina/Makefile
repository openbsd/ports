# $OpenBSD: Makefile,v 1.11 2015/01/06 10:07:01 ajacoutot Exp $

COMMENT=	Lumina Desktop Environment

GITV=		1420494806
DISTNAME=	lumina-${GITV}
PKGNAME=	lumina-0.8.0.${GITV}
EXTRACT_SUFX=	.tar.bz2
WRKDIST=	${WRKDIR}/lumina

SHARED_LIBS +=  LuminaUtils               1.0 # 1.0

CATEGORIES=	x11

HOMEPAGE=	https://github.com/pcbsd/lumina

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =   Yes

WANTLIB += GL Qt5Core Qt5Gui Qt5Multimedia Qt5MultimediaWidgets
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

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/qmake-qt5

.include <bsd.port.mk>
