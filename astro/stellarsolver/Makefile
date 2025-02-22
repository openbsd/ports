COMMENT =	astrometric plate solver

V =		2.5
DISTNAME =	stellarsolver-${V}

CATEGORIES =	astro

HOMEPAGE =	https://github.com/rlancaste/stellarsolver
DISTFILES=	stellarsolver-{}${V}${EXTRACT_SUFX}

SITES =		${HOMEPAGE}/archive/refs/tags/

MAINTAINER =	Wen Heping <wenheping2000@hotmail.com>

SHARED_LIBS =	stellarsolver             0.0 # 0.0

WANTLIB +=	${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5Gui Qt5Network
WANTLIB +=	Qt5Widgets cfitsio gsl gslcblas m wcs

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS =	astro/wcslib \
		devel/gsl \
		math/cfitsio

.include <bsd.port.mk>
