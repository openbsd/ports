# $OpenBSD: Makefile,v 1.8 2019/09/01 19:28:32 sthen Exp $

V =		0.60pl20190731
COMMENT =	source port of Descent, a 6-degrees-of-freedom shooter
DISTNAME =	dxx-rebirth_${V:S/0.60pl//g}-src
PKGNAME =	dxx-rebirth-${V}
CATEGORIES =	games x11

HOMEPAGE =	https://www.dxx-rebirth.com/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv3 with special exception for Parallax license
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU SDL SDL_mixer c m physfs png z

MASTER_SITES =	https://www.dxx-rebirth.com/download/dxx/rebirth/
EXTRACT_SUFX =	.tar.xz

# C++14
COMPILER =	base-clang ports-gcc

MODULES =	devel/scons
MODSCONS_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS}" \
		LINKFLAGS="-L${LOCALBASE}/lib"
MODSCONS_FLAGS =	ignore_unknown_variables=1 verbosebuild=1

BUILD_DEPENDS =	devel/boost,-main
LIB_DEPENDS =	devel/physfs \
		devel/sdl \
		devel/sdl-mixer \
		graphics/png

NO_TEST =	Yes

.include <bsd.port.mk>
