# $OpenBSD: Makefile,v 1.3 2003/01/21 09:39:42 pvalchev Exp $

COMMENT=	"astrosmash clone for X"

DISTNAME=	cosmosmash-1.3
CATEGORIES=	games

HOMEPAGE=	http://www3.sympatico.ca/sarrazip/dev/cosmosmash.html

MAINTAINER=	Sean Escriva <eliab@spack.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www3.sympatico.ca/sarrazip/dev/

LIB_DEPENDS=	gengameng.4.1::devel/gengameng \
		SDL_mixer::devel/sdl-mixer
USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
