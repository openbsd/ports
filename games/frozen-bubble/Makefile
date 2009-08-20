# $OpenBSD: Makefile,v 1.6 2009/08/20 21:20:13 sthen Exp $

SHARED_ONLY =		Yes

COMMENT-main =		bubble popping game, like puzzle bobble
COMMENT-server =	server for the frozen-bubble bubble popping game

VER =			2.2.0
DISTNAME =		frozen-bubble-${VER}
PKGNAME-main =		${DISTNAME}p3
PKGNAME-server =	frozen-bubble-server-${VER}p1
CATEGORIES =		games

HOMEPAGE =		http://www.frozen-bubble.org
MAINTAINER =		James Wright <jamesw@bsdhosting.co.za>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/data/
EXTRACT_SUFX =		.tar.bz2

USE_GMAKE =		Yes

# No regress tests here
NO_REGRESS =		Yes

MODULES =		perl \
			devel/gettext

BUILD_DEPENDS =		::devel/p5-SDL \
			::devel/sdl-pango \
			::devel/p5-Locale-gettext

RUN_DEPENDS-main =	${BUILD_DEPENDS} \
			::${BASE_PKGPATH},-server

LIB_DEPENDS-main =	${MODGETTEXT_LIB_DEPENDS} \
			SDL_Pango::devel/sdl-pango \
			SDL_mixer::devel/sdl-mixer \
			glib-2.0,gmodule-2.0,gobject-2.0::devel/glib2

LIB_DEPENDS-server =	${MODGETTEXT_LIB_DEPENDS} \
			glib-2.0::devel/glib2

WANTLIB-main =		SDL X11 m pango-1.0 pthread pthread-stubs xcb
WANTLIB-server =	c

MULTI_PACKAGES =	-main -server

.include <bsd.port.mk>
