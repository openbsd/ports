# $OpenBSD: Makefile,v 1.4 2020/03/07 15:09:49 cwen Exp $

COMMENT =	minimalistic plugin API for video effects
CATEGORIES =	graphics multimedia

DISTNAME =	frei0r-plugins-1.7.0
MASTER_SITES =	https://files.dyne.org/frei0r/releases/

HOMEPAGE =	https://frei0r.dyne.org/

MAINTAINER =	Raphael Graf <r@undefined.ch>

# GPLv2+
PERMIT_PACKAGE = Yes

WANTLIB =	${COMPILER_LIBCXX} m cairo

LIB_DEPENDS =	graphics/cairo

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

CONFIGURE_ARGS =	-DWITHOUT_OPENCV=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

NO_TEST =	Yes

.include <bsd.port.mk>
