# $OpenBSD: Makefile,v 1.1.1.1 2016/07/10 10:27:56 czarkoff Exp $

GH_ACCOUNT =		eXeC64
GH_PROJECT =		imv
GH_TAGNAME =		v2.1.1

COMMENT =		simple image viewer
CATEGORIES =		graphics x11
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 SDL2_ttf c fontconfig freeimage pthread

LIB_DEPENDS =		devel/sdl2 \
			devel/sdl2-ttf \
			graphics/freeimage
RUN_DEPENDS =		devel/desktop-file-utils
TEST_DEPENDS =		devel/cmocka

MAKE_FLAGS +=		V=1 BUILDDIR="${WRKDIR}/build-${ARCH}"
FAKE_FLAGS +=		$(MAKE_FLAGS) MANPREFIX=${PREFIX}/man PREFIX=${PREFIX}

USE_GMAKE =		Yes

ALL_TARGET =		imv
TEST_TARGET =		check

.include <bsd.port.mk>
