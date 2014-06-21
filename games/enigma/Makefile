# $OpenBSD: Makefile,v 1.25 2014/06/21 11:54:29 jasper Exp $

COMMENT=	Oxyd/Rock'n'Roll clone

V=		1.01
DISTNAME=	enigma-${V}-64bit
PKGNAME=	enigma-${V}
REVISION =	3

CATEGORIES=	games x11

HOMEPAGE=	http://www.nongnu.org/enigma/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	SDL c m enet pthread stdc++ z SDL_image>=1 \
		SDL_mixer>=2 SDL_ttf>=7 png>=8 zipios>=1 \
		xerces-c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enigma-game/}

WRKDIST=	${WRKDIR}/enigma-${V}

MODULES=	devel/gettext

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-ttf \
		net/enet>=1.3.3 \
		graphics/png \
		archivers/zipios \
		textproc/xerces-c

USE_GMAKE=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-cxxlua=no
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		LIBS="-lm -lz -lenet -pthread"

.include <bsd.port.mk>
