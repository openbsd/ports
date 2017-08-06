# $OpenBSD: Makefile,v 1.1.1.1 2017/08/06 21:55:01 bentley Exp $

COMMENT =	realtime audio and music engine for games

V =		1.9.2
DISTNAME =	audiality2-$V

GH_ACCOUNT =	olofson
GH_PROJECT =	audiality2
GH_TAGNAME =	v$V

SHARED_LIBS +=  audiality2                0.0

CATEGORIES =	audio

HOMEPAGE =	http://audiality.org/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# zlib
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_DISTFILES_FTP =	test/data/*.a2s are all rights reserved

WANTLIB += c SDL2 m

MODULES =		devel/cmake
LIB_DEPENDS =		devel/sdl2

CONFIGURE_ARGS =	-DUSE_JACK=OFF

NO_TEST =		Yes

.include <bsd.port.mk>
