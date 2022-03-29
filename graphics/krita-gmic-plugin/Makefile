COMMENT =	krita gmic plugin

V =		3.0.2.1
DISTNAME =	krita-gmic-plugin-${V}

CATEGORIES =	graphics

HOMEPAGE =	https://kde.org/krita

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

# CeCILL, GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://files.kde.org/krita/build/dependencies/
DISTFILES =	gmic-${V}-patched.tar.gz

MODULES =	devel/kf5 x11/qt5

WANTLIB += ${COMPILER_LIBCXX} ICE KF5CoreAddons Qt5Core Qt5Gui
WANTLIB += Qt5Network Qt5Widgets SM X11 Xext curl fftw3 fftw3_threads
WANTLIB += kritaqmicinterface m png z

LIB_DEPENDS =	graphics/krita \
		net/curl \
		math/fftw3

WRKSRC =	${WRKDIST}/gmic-qt

CONFIGURE_ARGS +=	-DENABLE_SYSTEM_GMIC=false \
			-DGMIC_QT_HOST=krita-plugin

post-extract:
	mv ${WRKDIR}/gmic-${V}-patched ${WRKDIST}

.include <bsd.port.mk>
