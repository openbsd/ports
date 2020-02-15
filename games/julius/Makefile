# $OpenBSD: Makefile,v 1.11 2020/02/15 14:49:37 bcallah Exp $

V =		1.3.0
COMMENT =	open source re-implementation of Caesar III game engine
DISTNAME =	julius-${V}
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

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# Talk to upstream about this?
pre-configure:
	sed -i 's,--coverage,,g' ${WRKSRC}/test/CMakeLists.txt

.include <bsd.port.mk>
