# $OpenBSD: Makefile,v 1.5 2010/10/24 21:19:01 ajacoutot Exp $

COMMENT=	bomberman clone with multiplayer mode

DISTNAME=	bomberclone-0.11.8
CATEGORIES=	games x11

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

HOMEPAGE=	http://www.bomberclone.de/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	SDL c m pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bomberclone/}
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	SDL_image::devel/sdl-image \
		SDL_mixer::devel/sdl-mixer

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-debug
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-pthread"

post-install:
	cd ${WRKINST}${LOCALBASE} && find share -type d -name CVS | xargs rm -rf

.include <bsd.port.mk>
