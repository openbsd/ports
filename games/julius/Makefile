# $OpenBSD: Makefile,v 1.5 2018/11/06 17:38:10 bcallah Exp $

# XXX: Use MASTER_SITES once a release comes out?
COMMENT =	open source re-implementation of Caesar III game engine
DISTNAME =	${GH_PROJECT}-0.0.0.20181104
CATEGORIES =	games x11

GH_ACCOUNT =	bvschaik
GH_PROJECT =	julius
GH_COMMIT =	ed29fc9547448c17af753c9cffb7237d5546b808

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# AGPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 SDL2_mixer c pthread

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2-mixer

.include <bsd.port.mk>
