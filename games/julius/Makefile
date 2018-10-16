# $OpenBSD: Makefile,v 1.4 2018/10/16 14:54:33 bcallah Exp $

# XXX: Use MASTER_SITES once a release comes out?
COMMENT =	open source re-implementation of Caesar III game engine
DISTNAME =	${GH_PROJECT}-0.0.0.20181012
CATEGORIES =	games x11

GH_ACCOUNT =	bvschaik
GH_PROJECT =	julius
GH_COMMIT =	6861560b206e1092140ffa47dc135eaf252a5dfd

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# AGPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 SDL2_mixer c pthread

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2-mixer

.include <bsd.port.mk>
