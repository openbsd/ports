# $OpenBSD: Makefile,v 1.2 2019/08/01 01:25:34 danj Exp $

COMMENT =	open source reimplementation of Syndicate game
DISTNAME =	freesynd-0.7.5
CATEGORIES = 	games x11
REVISION =	0

HOMEPAGE =	https://freesynd.sourceforge.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =  Yes

WANTLIB += ${COMPILER_LIBCXX} SDL SDL_image SDL_mixer c m png
WANTLIB += z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=freesynd/}

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl-image \
		devel/sdl-mixer

NO_TEST =	Yes

.include <bsd.port.mk>
