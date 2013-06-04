# $OpenBSD: Makefile,v 1.4 2013/06/04 22:07:32 bcallah Exp $

COMMENT =		fast paced arcade-style space shooter
DISTNAME =		chromium-bsu-0.9.15.1
CATEGORIES =		games x11
HOMEPAGE =		http://chromium-bsu.sourceforge.net/

MAINTAINER =		Antti Harri <iku@openbsd.fi>

# Clarified Artistic License
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU SDL SDL_image alut c fontconfig ftgl glpng
WANTLIB += jpeg m openal png pthread stdc++ tiff webp z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=chromium-bsu/}

MODULES =		devel/gettext
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
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
