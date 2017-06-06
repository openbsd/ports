# $OpenBSD: Makefile,v 1.23 2017/06/06 16:50:43 benoit Exp $

BROKEN-hppa =	no atomic ops
COMMENT =	Midnight Commander-like file manager for X
DISTNAME =	worker-3.9.0
CATEGORIES =	x11

HOMEPAGE =	http://www.boomerangsworld.de/
MAINTAINER =	Brian Callahan <bcallah@devio.us>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext Xft Xinerama Xrender c expat
WANTLIB += fontconfig freetype m pthread pthread-stubs xcb z ${LIBECXX}

MASTER_SITES =	http://www.boomerangsworld.de/cms/worker/downloads/

COMPILER =	gcc

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-avfs \
			--without-dbus \
			--without-hal \
			--without-libmagic \
			--disable-inotify \
			--disable-lua

.include <bsd.port.mk>
