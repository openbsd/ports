# $OpenBSD: Makefile,v 1.1.1.1 2018/05/11 15:07:02 bcallah Exp $

# XXX: Use MASTER_SITES once a release comes out?
COMMENT =	open source re-implementation of Caesar III game engine
DISTNAME =	${GH_PROJECT}-0.0.0.20180430
CATEGORIES =	games x11

GH_ACCOUNT =	bvschaik
GH_PROJECT =	julius
GH_COMMIT =	cb7ecdfdae9b4fbb6f61db6abb287a84dca2afb5

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# AGPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 SDL2_mixer c pthread

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2-mixer

.include <bsd.port.mk>
