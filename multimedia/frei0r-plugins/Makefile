# $OpenBSD: Makefile,v 1.3 2020/03/04 20:00:55 rapha Exp $

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

MODULES =	devel/cmake

CONFIGURE_ARGS =	-DWITHOUT_OPENCV=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

NO_TEST =	Yes

.include <bsd.port.mk>
