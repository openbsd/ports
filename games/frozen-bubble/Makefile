# $OpenBSD: Makefile,v 1.19 2013/03/25 23:43:40 sthen Exp $

SHARED_ONLY =		Yes

COMMENT-main =		bubble popping game, like puzzle bobble
COMMENT-server =	server for the frozen-bubble bubble popping game

VER =			2.2.0
DISTNAME =		frozen-bubble-${VER}
PKGNAME-main =		${DISTNAME}
REVISION-main =		8
PKGNAME-server =	frozen-bubble-server-${VER}
REVISION-server =	5
CATEGORIES =		games

HOMEPAGE =		http://www.frozen-bubble.org
MAINTAINER =		James Wright <jamesw@bsdhosting.co.za>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/data/
EXTRACT_SUFX =		.tar.bz2

USE_GMAKE =		Yes

# No regress tests here
NO_TEST =		Yes

MODULES =		perl \
			devel/gettext

BUILD_DEPENDS =		devel/p5-SDL \
			devel/sdl-pango \
			devel/p5-Locale-gettext

RUN_DEPENDS-main =	devel/p5-SDL \
			devel/sdl-pango \
			devel/p5-Locale-gettext \
			${BASE_PKGPATH},-server

LIB_DEPENDS-main =	${MODGETTEXT_LIB_DEPENDS} \
			devel/sdl-pango \
			devel/sdl-mixer \
			devel/glib2

LIB_DEPENDS-server =	${MODGETTEXT_LIB_DEPENDS} \
			devel/glib2

WANTLIB-main =		${MODGETTEXT_WANTLIB} \
			SDL X11 m pango-1.0 pthread pthread-stubs xcb \
			SDL_Pango SDL_mixer glib-2.0 gmodule-2.0 \
			gobject-2.0
WANTLIB-server =	${MODGETTEXT_WANTLIB} c glib-2.0

MULTI_PACKAGES =	-main -server

.include <bsd.port.mk>
