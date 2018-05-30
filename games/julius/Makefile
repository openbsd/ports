# $OpenBSD: Makefile,v 1.2 2018/05/30 03:22:34 bcallah Exp $

# XXX: Use MASTER_SITES once a release comes out?
COMMENT =	open source re-implementation of Caesar III game engine
DISTNAME =	${GH_PROJECT}-0.0.0.20180527
CATEGORIES =	games x11

GH_ACCOUNT =	bvschaik
GH_PROJECT =	julius
GH_COMMIT =	159a5084a4a5e899d87c9ce89b7d330ae2141dc9

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# AGPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 SDL2_mixer c pthread

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2-mixer

.include <bsd.port.mk>
