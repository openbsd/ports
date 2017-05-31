# $OpenBSD: Makefile,v 1.22 2017/05/31 08:08:18 espie Exp $

BROKEN-hppa =	no atomic ops
COMMENT =	Midnight Commander-like file manager for X
DISTNAME =	worker-3.8.3
CATEGORIES =	x11

HOMEPAGE =	http://www.boomerangsworld.de/

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
