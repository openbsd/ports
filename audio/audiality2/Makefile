# $OpenBSD: Makefile,v 1.2 2017/12/20 20:26:33 jca Exp $

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

COMPILER =	base-clang ports-gcc base-gcc
COMPILER_LANGS = c
# __sync_bool_compare_and_swap_4
MODGCC4_ARCHS =	arm

MODULES =		devel/cmake
LIB_DEPENDS =		devel/sdl2

CONFIGURE_ARGS =	-DUSE_JACK=OFF

NO_TEST =		Yes

.include <bsd.port.mk>
