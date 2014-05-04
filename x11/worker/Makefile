# $OpenBSD: Makefile,v 1.3 2014/05/04 20:13:54 bcallah Exp $

COMMENT =	Midnight Commander like file manager for X
DISTNAME =	worker-3.4.0
CATEGORIES =	x11

HOMEPAGE =	http://www.boomerangsworld.de/

MAINTAINER =	Eivind Nicolay Evensen <eivinde@terraplane.org>

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
			--disable-inotify

.include <bsd.port.mk>
