# $OpenBSD: Makefile,v 1.5 2011/03/31 16:37:17 ajacoutot Exp $

COMMENT =	2D arcade game

DISTNAME =	blobwars-1.18
REVISION =	0

CATEGORIES =	games

HOMEPAGE =	http://sourceforge.net/projects/blobwars/

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# GPLv2+ except for some audios licensed CC-BY-SA 3.0, CC-BY 3.0,
# LGPLv2.1, BSD, GPLv2, "Public Domain", "Fair use".
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	SDL SDL_image SDL_mixer SDL_net SDL_ttf c m pthread stdc++ z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=blobwars/}

MODULES =	devel/gettext

LIB_DEPENDS =	devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-net \
		devel/sdl-ttf

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2

MAKE_ENV +=	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
		CXX=${CXX}

USE_X11 =	Yes
USE_GMAKE =	Yes

NO_REGRESS =	Yes

MAKE_FILE =	makefile

.include <bsd.port.mk>
