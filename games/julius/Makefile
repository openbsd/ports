# $OpenBSD: Makefile,v 1.9 2019/10/01 17:58:40 naddy Exp $

V =		1.1.0
COMMENT =	open source re-implementation of Caesar III game engine
DISTNAME =	julius-${V}
REVISION =	0
EXTRACT_SUFX =	-source.tar.gz
CATEGORIES =	games x11

HOMEPAGE =	https://github.com/bvschaik/julius
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# AGPLv3 only
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 SDL2_mixer c m pthread

MASTER_SITES =	https://github.com/bvschaik/julius/releases/download/v${V}/

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2-mixer

# Talk to upstream about this?
pre-configure:
	sed -i 's,--coverage,,g' ${WRKSRC}/test/CMakeLists.txt

.include <bsd.port.mk>
