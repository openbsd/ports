# $OpenBSD: Makefile,v 1.1.1.1 2018/12/30 11:44:29 rsadowski Exp $

COMMENT =	minimalistic plugin API for video effects
CATEGORIES =	graphics multimedia

DISTNAME =	frei0r-plugins-1.6.1
MASTER_SITES =	https://files.dyne.org/frei0r/releases/

HOMEPAGE =	https://frei0r.dyne.org/

MAINTAINER =	Raphael Graf <r@undefined.ch>

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes

WANTLIB =	${COMPILER_LIBCXX} m cairo

LIB_DEPENDS =	graphics/cairo

MODULES =	devel/cmake

CONFIGURE_ARGS =	-DWITHOUT_OPENCV:BOOL=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

NO_TEST =	Yes

.include <bsd.port.mk>
