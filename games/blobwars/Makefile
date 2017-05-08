# $OpenBSD: Makefile,v 1.16 2017/05/08 20:13:47 kili Exp $

COMMENT =	2D arcade game

DISTNAME =	blobwars-2.00

CATEGORIES =	games

HOMEPAGE =	http://sourceforge.net/projects/blobwars/

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# GPLv2+ except for some audios licensed CC-BY-SA 3.0, CC-BY 3.0,
# LGPLv2.1, BSD, GPLv2, "Public Domain", "Fair use".
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	SDL2 SDL2_image SDL2_mixer SDL2_net SDL2_ttf c m pthread ${LIBCXX} z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=blobwars/}

MODULES =	devel/gettext

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
