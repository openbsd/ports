# $OpenBSD: Makefile,v 1.7 2004/11/28 23:32:06 espie Exp $

COMMENT=	"astrosmash clone for X"

DISTNAME=	cosmosmash-1.3
CATEGORIES=	games

HOMEPAGE=	http://www3.sympatico.ca/sarrazip/dev/cosmosmash.html

MAINTAINER=	Sean Escriva <eliab@spack.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL SDL_image X11 Xext c m pthread stdc++ usbhid

MASTER_SITES=	http://www3.sympatico.ca/sarrazip/dev/

LIB_DEPENDS=	gengameng.4.1::devel/gengameng \
		SDL_mixer::devel/sdl-mixer

USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
