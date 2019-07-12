# $OpenBSD: Makefile,v 1.5 2019/07/12 20:47:01 sthen Exp $

GH_ACCOUNT =		eXeC64
GH_PROJECT =		imv
GH_TAGNAME =		v2.1.3

COMMENT =		simple image viewer
CATEGORIES =		graphics x11
REVISION =		1

# GPLv2+
PERMIT_PACKAGE =	Yes

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
