# $OpenBSD: Makefile,v 1.34 2018/06/27 21:04:23 espie Exp $

BROKEN-hppa =	no atomic ops
COMMENT =	Midnight Commander-like file manager for X
DISTNAME =	worker-3.15.1
CATEGORIES =	x11
REVISION =	0

HOMEPAGE =	http://www.boomerangsworld.de/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext Xft Xinerama Xrender c expat
WANTLIB += fontconfig freetype m pthread xcb z ${COMPILER_LIBCXX}

MASTER_SITES =	http://www.boomerangsworld.de/cms/worker/downloads/

# C++11
COMPILER =	base-clang ports-clang ports-gcc

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-avfs \
			--without-dbus \
			--without-hal \
			--without-libmagic \
			--disable-inotify \
			--disable-lua

TEST_DEPENDS =	devel/check
TEST_FLAGS =	CXXFLAGS="${CXXFLAGS} -std=c++11 -I${LOCALBASE}/include"

.include <bsd.port.mk>
