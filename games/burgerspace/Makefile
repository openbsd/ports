# $OpenBSD: Makefile,v 1.5 2003/01/21 09:36:55 pvalchev Exp $

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

LIB_DEPENDS=	gengameng.4::devel/gengameng \
		SDL_mixer::devel/sdl-mixer
USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
