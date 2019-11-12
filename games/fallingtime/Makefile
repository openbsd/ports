# $OpenBSD: Makefile,v 1.1.1.1 2019/11/12 13:37:22 bcallah Exp $

COMMENT =	game where you are a constantly falling ball
PKGNAME =	fallingtime-${GH_TAGNAME}
CATEGORIES =	games x11

GH_ACCOUNT =	cxong
GH_PROJECT =	FallingTime
GH_TAGNAME =	1.0.2

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 SDL2_image SDL2_mixer SDL2_ttf c m pthread

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2-image \
		devel/sdl2-mixer \
		devel/sdl2-ttf

NO_TEST =	Yes

post-install:
	echo "#!/bin/sh\ncd ${TRUEPREFIX}/share/fallingtime\n./falling_time" > \
		${WRKSRC}/fallingtime
	${SUBST_CMD} -c -m 555 ${WRKSRC}/fallingtime ${PREFIX}/bin/fallingtime

.include <bsd.port.mk>
