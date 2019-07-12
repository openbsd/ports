# $OpenBSD: Makefile,v 1.10 2019/07/12 20:46:28 sthen Exp $

COMMENT =	puzzle game collecting diamonds and avoiding obstacles
DISTNAME =	xye-0.12.2
CATEGORIES =	games x11
REVISION =	4

HOMEPAGE =	http://xye.sourceforge.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# zlib
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=xye/}

WANTLIB += SDL SDL_image SDL_ttf c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =	devel/sdl-image \
		devel/sdl-ttf

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
