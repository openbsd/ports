# $OpenBSD: Makefile,v 1.14 2008/10/26 23:19:30 ajacoutot Exp $

COMMENT=	Oxyd/Rock'n'Roll clone

V=		1.01
DISTNAME=	enigma-${V}-64bit
PKGNAME=	enigma-${V}

CATEGORIES=	games x11

HOMEPAGE=	http://www.nongnu.org/enigma/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	SDL c m pthread stdc++ z

MASTER_SITES=	${MASTER_SITE_BERLIOS:=enigma-game/}

WRKDIST=	${WRKDIR}/enigma-${V}

MODULES=	devel/gettext

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
BUILD_DEPENDS=	::net/enet
LIB_DEPENDS=	SDL_image.>=1::devel/sdl-image \
		SDL_mixer.>=2::devel/sdl-mixer \
		SDL_ttf.>=7::devel/sdl-ttf \
		png.>=8::graphics/png \
		zipios.>=1::archivers/zipios \
		xerces-c::textproc/xerces-c

USE_GMAKE=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-cxxlua=no
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng \
			-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib \
			-L${LOCALBASE}/lib" \
		LIBS="-lm -lz -pthread"

.include <bsd.port.mk>
