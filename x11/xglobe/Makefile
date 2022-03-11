COMMENT=	display the Earth on X11

V=		0.6.3
DISTNAME=	xglobe-${V}

CATEGORIES=	x11 geo

HOMEPAGE=	https://github.com/sizeofvoid/xglobe

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPLv2, included map is free
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5X11Extras SM X11 Xext c m

MASTER_SITES=	https://github.com/sizeofvoid/xglobe/releases/download/v${V}/

MODULES=	devel/cmake \
		x11/qt5

LIB_DEPENDS=	x11/qt5/qtx11extras

RUN_DEPENDS=	geo/openbsd-developers \
		x11/xwallpaper
BUILD_DEPENDS=	x11/xwallpaper

FLAVORS=	no_map
FLAVOR?=
.if ${FLAVOR:Mno_map}
CONFIGURE_ARGS =	-DENABLE_INSTALL_MAPS=OFF
.else
CONFIGURE_ARGS =	-DENABLE_INSTALL_MAPS=ON
.endif

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/getcloudmap ${PREFIX}/bin

.include <bsd.port.mk>
