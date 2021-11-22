# $OpenBSD: Makefile,v 1.30 2021/11/22 15:00:43 espie Exp $

COMMENT-main =		bubble popping game, like puzzle bobble
COMMENT-server =	server for the frozen-bubble bubble popping game

VER =			2.2.0
DISTNAME =		frozen-bubble-${VER}
REVISION-main =		15
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

# Needed for post-patch deinterlacing
BUILD_DEPENDS +=	graphics/ImageMagick

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

# fix "Interlace handling should be turned on when using png_read_image"
post-patch:
	@cd ${WRKSRC} && for interlaced in	gfx/flags/flag-de.png \
						gfx/flags/flag-fi.png \
						gfx/flags/flag-no.png; \
	do \
		${LOCALBASE}/bin/mogrify -interlace none $${interlaced} ;\
	done

.include <bsd.port.mk>
