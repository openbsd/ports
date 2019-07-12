# $OpenBSD: Makefile,v 1.26 2019/07/12 20:46:15 sthen Exp $

COMMENT =	2D arcade game

DISTNAME =	blobwars-2.00
REVISION =	4
FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES =	games

HOMEPAGE =	http://sourceforge.net/projects/blobwars/

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# GPLv2+ except for some audios licensed CC-BY-SA 3.0, CC-BY 3.0,
# LGPLv2.1, BSD, GPLv2, "Public Domain", "Fair use".
PERMIT_PACKAGE =		Yes

WANTLIB =	SDL2 SDL2_image SDL2_mixer SDL2_net SDL2_ttf c iconv intl \
		m pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=blobwars/}

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/sdl2-image \
		devel/sdl2-mixer \
		devel/sdl2-net \
		devel/sdl2-ttf

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CXXFLAGS +=	-DOpenBSD

MAKE_ENV +=	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
		CXX=${CXX}

USE_X11 =	Yes
USE_GMAKE =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
