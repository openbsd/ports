COMMENT =	minimalistic plugin API for video effects
CATEGORIES =	graphics multimedia

GH_ACCOUNT =	dyne
GH_PROJECT =	frei0r
GH_TAGNAME =	v2.3.0

DISTNAME =	frei0r-plugins-${GH_TAGNAME:S/v//}

HOMEPAGE =	https://frei0r.dyne.org/

MAINTAINER =	Raphael Graf <r@undefined.ch>

# GPLv2+
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} cairo m

LIB_DEPENDS =	graphics/cairo

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

CONFIGURE_ARGS =	-DWITHOUT_OPENCV=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

NO_TEST =	Yes

.include <bsd.port.mk>
