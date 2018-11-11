# $OpenBSD: Makefile,v 1.6 2018/11/11 16:00:14 bcallah Exp $

COMMENT =	open source re-implementation of Caesar III game engine
CATEGORIES =	games x11

GH_ACCOUNT =	bvschaik
GH_PROJECT =	julius
GH_TAGNAME =	v1.0.0

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# AGPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 SDL2_mixer c pthread

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2-mixer

.include <bsd.port.mk>
