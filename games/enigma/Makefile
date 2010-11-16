# $OpenBSD: Makefile,v 1.19 2010/11/16 11:23:26 espie Exp $

COMMENT=	Oxyd/Rock'n'Roll clone

V=		1.01
DISTNAME=	enigma-${V}-64bit
PKGNAME=	enigma-${V}
REVISION =	0

CATEGORIES=	games x11

HOMEPAGE=	http://www.nongnu.org/enigma/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	SDL c m pthread stdc++ z SDL_image>=1 SDL_mixer>=2 \
		SDL_ttf>=7 png>=8 zipios>=1 xerces-c

MASTER_SITES=	${MASTER_SITE_BERLIOS:=enigma-game/}

WRKDIST=	${WRKDIR}/enigma-${V}

MODULES=	devel/gettext

RUN_DEPENDS=	devel/desktop-file-utils
BUILD_DEPENDS=	net/enet
LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-ttf \
		graphics/png \
		archivers/zipios \
		textproc/xerces-c

USE_GMAKE=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-cxxlua=no
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng \
			-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib \
			-L${LOCALBASE}/lib" \
		LIBS="-lm -lz -pthread"

.include <bsd.port.mk>
