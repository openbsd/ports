COMMENT =	astrometric plate solver

V =		2.7
DISTNAME =	stellarsolver-${V}

CATEGORIES =	astro

HOMEPAGE =	https://github.com/rlancaste/stellarsolver
DISTFILES=	stellarsolver-{}${V}${EXTRACT_SUFX}

SITES =		${HOMEPAGE}/archive/refs/tags/

MAINTAINER =	Wen Heping <wenheping2000@hotmail.com>

SHARED_LIBS +=	stellarsolver6            0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Gui
WANTLIB += Qt6Network Qt6Widgets cfitsio gsl gslcblas m wcs

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake \
		x11/qt6

LIB_DEPENDS =	astro/wcslib \
		devel/gsl \
		math/cfitsio

CONFIGURE_ARGS =	-DUSE_QT5=OFF

.include <bsd.port.mk>
