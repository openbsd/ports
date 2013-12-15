# $OpenBSD: Makefile,v 1.1.1.1 2013/12/15 19:24:15 bcallah Exp $

COMMENT =	puzzle game collecting diamonds and avoiding obstacles
DISTNAME =	xye-0.12.2
CATEGORIES =	games x11

HOMEPAGE =	http://xye.sourceforge.net/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# zlib
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=xye/}

WANTLIB += SDL SDL_image SDL_ttf c m pthread stdc++

LIB_DEPENDS =	devel/sdl-image \
		devel/sdl-ttf

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
