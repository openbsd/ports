COMMENT =	easy to use 2D geometry library in C++

V =		1.3
DISTNAME =	lib2geom-${V}
REVISION =	0

CATEGORIES =	geo graphics

SHARED_LIBS +=  2geom 2.0 #1.2.0

HOMEPAGE =	https://gitlab.com/inkscape/lib2geom

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPL 2.1 and MPL 1.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} cairo double-conversion glib-2.0
WANTLIB += gsl gslcblas intl m

SITES =		https://gitlab.com/inkscape/lib2geom/-/archive/${V}/
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	no

# c++17
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/boost \
		devel/gtest \
		lang/cython${MODPY_FLAVOR} \
		x11/gtk+3

LIB_DEPENDS =	math/double-conversion \
		devel/gsl \
		graphics/cairo \
		devel/gettext,-runtime \
		devel/glib2

CONFIGURE_ARGS =	-D2GEOM_BOOST_PYTHON=NO \
			-D2GEOM_BUILD_SHARED=YES

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

.include <bsd.port.mk>
