# $OpenBSD: Makefile,v 1.1.1.1 2012/03/12 17:55:36 ajacoutot Exp $

COMMENT =		fast paced arcade-style space shooter
DISTNAME =		chromium-bsu-0.9.15
CATEGORIES =		games x11
HOMEPAGE =		http://chromium-bsu.sourceforge.net/

MAINTAINER =		Antti Harri <iku@openbsd.fi>

# Clarified Artistic License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

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

NO_REGRESS =		Yes

.include <bsd.port.mk>
