COMMENT =	minimalistic plugin API for video effects
CATEGORIES =	graphics multimedia

DISTNAME =	frei0r-plugins-1.8.0
MASTER_SITES =	https://files.dyne.org/frei0r/releases/
REVISION =	0

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
