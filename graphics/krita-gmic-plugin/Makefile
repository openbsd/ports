COMMENT =	krita gmic plugin

V =		3.2.4.1
DISTNAME =	krita-gmic-plugin-${V}

CATEGORIES =	graphics

HOMEPAGE =	https://krita.org

# Info about this plugin:
# https://invent.kde.org/graphics/krita/-/blob/master/README.packagers.md

# Actually developed here:
# https://github.com/amyspark/gmic

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

# CeCILL, GPLv3
PERMIT_PACKAGE =	Yes

SITES =		https://files.kde.org/krita/build/dependencies/
DISTFILES =	gmic-${V}-patched.tar.gz

MODULES =	devel/kf5 x11/qt5

WANTLIB += ${COMPILER_LIBCXX} ICE KF5CoreAddons Qt5Core Qt5Gui
WANTLIB += Qt5Network Qt5Widgets SM X11 Xext curl fftw3 fftw3_threads
WANTLIB += kritaqmicinterface m png z

BUILD_DEPENDS =	shells/bash

LIB_DEPENDS =	graphics/krita \
		net/curl \
		math/fftw3

WRKSRC =	${WRKDIST}/gmic-qt

CONFIGURE_ARGS +=	-DCMAKE_PREFIX_PATH=${LOCALBASE}/lib/qt5/cmake \
			-DENABLE_SYSTEM_GMIC=false \
			-DGMIC_QT_HOST=krita-plugin

USE_GMAKE =	Yes

post-extract:
	mv ${WRKDIR}/gmic-${V}-patched ${WRKDIST}

post-configure:
	chmod +x ${WRKSRC}/translations/lrelease.sh
	cd ${WRKSRC}/translations/filters && gmake

.include <bsd.port.mk>
