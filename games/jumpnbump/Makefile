# $OpenBSD: Makefile,v 1.1.1.1 2018/06/14 23:38:06 bcallah Exp $

V =		1.60
COMMENT =	game of cute bunnies jumping on each other's heads
DISTNAME =	jumpnbump-${V}
CATEGORIES =	games x11

HOMEPAGE =	https://gitlab.com/LibreGames/jumpnbump
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 SDL2_mixer SDL2_net bz2 c m z

MASTER_SITES =	https://gitlab.com/LibreGames/jumpnbump/-/archive/${V}/

MODULES =	lang/python
MODPY_BUILDDEP =	No
MODPY_RUNDDEP =		No
MODPY_ADJ_FILES =	menu/jumpnbump_menu.py.pre

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	archivers/bzip2 \
		devel/sdl2-mixer \
		devel/sdl2-net

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	none

USE_GMAKE =	Yes

FAKE_FLAGS =	DESTDIR=

NO_TEST =	Yes

.include <bsd.port.mk>
