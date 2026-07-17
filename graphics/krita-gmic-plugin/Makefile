COMMENT =	krita gmic plugin

V =		3.7.4.1
DISTNAME =	gmic-${V}
PKGNAME=	krita-gmic-plugin-${V}

CATEGORIES =	graphics

HOMEPAGE =	https://krita.org

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

# Info about this plugin:
# https://invent.kde.org/graphics/krita/-/blob/master/README.packagers.md
SITES =		https://github.com/vanyossi/gmic/releases/download/v${V}/

# CeCILL, GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += GL ICE KF6CoreAddons Qt6Core Qt6Gui Qt6Network Qt6Widgets
WANTLIB += SM X11 Xext curl fftw3 fftw3_threads kritaqmicinterface
WANTLIB += m png z

MODULES =	devel/kf6

WANTLIB += ${COMPILER_LIBCXX}

BUILD_DEPENDS =	shells/bash

LIB_DEPENDS =	graphics/krita>=6.0 \
		net/curl \
		math/fftw3

WRKDIST =	${WRKDIR}/gmic-v${V}
WRKSRC =	${WRKDIST}/gmic-qt

CONFIGURE_ARGS =	-DBUILD_WITH_QT6=ON \
			-DENABLE_SYSTEM_GMIC=OFF \
			-DGMIC_QT_HOST=krita-plugin \
			-DCMAKE_CXX_FLAGS_RELEASE=""

post-configure:
	chmod +x ${WRKSRC}/translations/lrelease.sh
	cd ${WRKSRC}/translations/filters && PATH="${MODQT_LIBDIR}/bin:$$PATH" gmake

.include <bsd.port.mk>
