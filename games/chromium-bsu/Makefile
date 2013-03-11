# $OpenBSD: Makefile,v 1.3 2013/03/11 11:07:38 espie Exp $

COMMENT =		fast paced arcade-style space shooter
DISTNAME =		chromium-bsu-0.9.15
CATEGORIES =		games x11
HOMEPAGE =		http://chromium-bsu.sourceforge.net/

REVISION =		0

MAINTAINER =		Antti Harri <iku@openbsd.fi>

# Clarified Artistic License
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU SDL SDL_image X11 alut c expat fontconfig freetype
WANTLIB += ftgl glpng intl m openal png pthread stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=chromium-bsu/}

MODULES =		devel/gettext
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		graphics/ftgl	\
			graphics/glpng	\
			audio/freealut	\
			devel/sdl-image

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="$$(pkg-config --libs sdl libpng) -liconv" \
			CPPFLAGS="-pthread"

NO_TEST =		Yes

.include <bsd.port.mk>
