# $OpenBSD: Makefile,v 1.13 2015/05/28 10:17:32 pascal Exp $

BROKEN-hppa =	no atomic ops
COMMENT =	Midnight Commander like file manager for X
DISTNAME =	worker-3.7.0
CATEGORIES =	x11
REVISION =	0

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>
HOMEPAGE =	http://www.boomerangsworld.de/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext Xft Xinerama Xrender c expat
WANTLIB += fontconfig freetype m pthread pthread-stubs xcb z

MASTER_SITES =	http://www.boomerangsworld.de/cms/worker/downloads/

MODULES =	gcc4
MODGCC4_ARCHS =	*
MODGCC4_LANGS =	c c++

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-avfs \
			--without-dbus \
			--without-hal \
			--without-libmagic \
			--disable-inotify \
			--disable-lua

MAKE_FLAGS =	LDFLAGS="-pthread"

.include <bsd.port.mk>
