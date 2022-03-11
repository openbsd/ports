COMMENT =	easy to use 2D geometry library in C++

V =		1.1.0
DISTNAME =	lib2geom-${V:S/.0//}

CATEGORIES =	geo graphics

SHARED_LIBS +=  2geom 0.0 #1.1

HOMEPAGE =	https://gitlab.com/inkscape/lib2geom

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPL 2.1 and MPL 1.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} cairo double-conversion glib-2.0
WANTLIB += gsl gslcblas intl m

MASTER_SITES =	https://gitlab.com/inkscape/lib2geom/-/archive/${V:S/.0//}/
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	no

SUBST_VARS +=	V

# c++17
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/boost \
		devel/gtest \
		lang/cython${MODPY_FLAVOR} \
		x11/gtk+3

LIB_DEPENDS =	math/double-conversion \
		devel/gsl \
		graphics/cairo \
		devel/gettext \
		devel/glib2

CONFIGURE_ARGS =	-D2GEOM_BOOST_PYTHON=NO \
			-D2GEOM_BUILD_SHARED=YES

.include <bsd.port.mk>
