# $OpenBSD: Makefile,v 1.7 2003/11/21 21:02:58 sturm Exp $

COMMENT=	"burgertime clone for X"

DISTNAME=	burgerspace-1.7.0
CATEGORIES=	games

HOMEPAGE=	http://www3.sympatico.ca/sarrazip/dev/burgerspace.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www3.sympatico.ca/sarrazip/dev/

LIB_DEPENDS=	gengameng.4.1::devel/gengameng \
		SDL_mixer::devel/sdl-mixer

MODULES=	gcc3
MODGCC3_ARCHES=	sparc64
MODGCC3_LANGS=	c++

USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
