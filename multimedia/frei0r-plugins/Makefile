COMMENT =	minimalistic plugin API for video effects
CATEGORIES =	graphics multimedia

GH_ACCOUNT =	dyne
GH_PROJECT =	frei0r
GH_TAGNAME =	v3.2.1

DISTNAME =	frei0r-plugins-${GH_TAGNAME:S/v//}

HOMEPAGE =	https://frei0r.dyne.org/

MAINTAINER =	Raphael Graf <r@undefined.ch>

# GPLv2+
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} cairo m

LIB_DEPENDS =	graphics/cairo

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

CONFIGURE_ARGS =	-DWITHOUT_GAVL=ON \
			-DWITHOUT_OPENCV=ON \
			-DFREI0R_VERSION=${GH_TAGNAME:S/v//}

.include <bsd.port.mk>
