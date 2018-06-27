# $OpenBSD: Makefile,v 1.12 2018/06/27 21:03:44 espie Exp $

COMMENT =		fast paced arcade-style space shooter
DISTNAME =		chromium-bsu-0.9.16.1
CATEGORIES =		games x11
HOMEPAGE =		http://chromium-bsu.sourceforge.net/
REVISION =		0

# Clarified Artistic License
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU SDL2 SDL2_image alut c fontconfig freetype ftgl
WANTLIB += iconv intl m openal pthread ${COMPILER_LIBCXX} z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=chromium-bsu/}

USE_GMAKE =		Yes

BUILD_DEPENDS =		devel/gettext-tools
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		graphics/ftgl \
			devel/sdl2-image \
			audio/freealut

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_TEST =		Yes

.include <bsd.port.mk>
