# $OpenBSD: Makefile,v 1.46 2020/08/21 03:22:50 bcallah Exp $

BROKEN-hppa =	no atomic ops
COMMENT =	Midnight Commander-like file manager for X
DISTNAME =	worker-4.5.0
REVISION =	0
CATEGORIES =	x11

HOMEPAGE =	http://www.boomerangsworld.de/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xext Xft Xinerama Xrender c expat
WANTLIB += fontconfig freetype m pthread xcb z ${COMPILER_LIBCXX}

MASTER_SITES =	http://www.boomerangsworld.de/cms/worker/downloads/

# C++14
COMPILER =	base-clang ports-clang ports-gcc

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/xli

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
