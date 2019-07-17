# $OpenBSD: Makefile,v 1.28 2019/07/17 14:49:22 danj Exp $

COMMENT-main =		bubble popping game, like puzzle bobble
COMMENT-server =	server for the frozen-bubble bubble popping game

VER =			2.2.0
DISTNAME =		frozen-bubble-${VER}
PKGNAME-main =		${DISTNAME}
REVISION-main =		14
PKGNAME-server =	frozen-bubble-server-${VER}
REVISION-server =	10
CATEGORIES =		games

HOMEPAGE =		http://www.frozen-bubble.org
# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}/data/
EXTRACT_SUFX =		.tar.bz2

USE_GMAKE =		Yes

# No regress tests here
NO_TEST =		Yes

MODULES =		perl

BUILD_DEPENDS =		devel/p5-SDL \
			devel/p5-Locale-gettext \
			devel/gettext,-tools

RUN_DEPENDS-main =	devel/p5-SDL \
			devel/p5-Locale-gettext \
			${BASE_PKGPATH},-server

LIB_DEPENDS-main =	devel/gettext,-runtime \
			devel/sdl-pango \
			devel/sdl-mixer \
			devel/glib2

LIB_DEPENDS-server =	devel/gettext,-runtime \
			devel/glib2

WANTLIB-main =		SDL SDL_Pango SDL_mixer glib-2.0 gobject-2.0 \
			intl m pango-1.0 pthread
WANTLIB-server =	c glib-2.0 intl pthread

MULTI_PACKAGES =	-main -server

.include <bsd.port.mk>
