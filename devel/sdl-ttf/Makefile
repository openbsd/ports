# $OpenBSD: Makefile,v 1.4 2001/08/10 23:16:27 pvalchev Exp $

COMMENT=	"SDL TrueType fonts library"

VER=	2.0.3
PROJ=	SDL_ttf
DISTNAME=	${PROJ}-${VER}
PKGNAME=	sdl-ttf-${VER}
CATEGORIES=	devel graphics
NEED_VERSION=	1.364
MASTER_SITES=	http://www.libsdl.org/projects/${PROJ}/release/

HOMEPAGE=	http://www.libsdl.org/

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	SDL.:sdl-*-!no_x11:devel/sdl

USE_X11=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
# Cheat on freetype-config for now due to it not being included in 2.9
CONFIGURE_ENV+=		FREETYPE_CONFIG=/usr/bin/false \
			CPPFLAGS="-I${X11BASE}/include/freetype2" \
			LIBS="-lfreetype"

.include <bsd.port.mk>
