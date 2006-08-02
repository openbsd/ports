# $OpenBSD: Makefile,v 1.11 2006/08/02 09:36:20 espie Exp $

COMMENT=	"burgertime clone for X"

DISTNAME=	burgerspace-1.7.0
CATEGORIES=	games

HOMEPAGE=	http://www3.sympatico.ca/sarrazip/dev/burgerspace.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL X11 Xext c m pthread stdc++ usbhid

MASTER_SITES=	http://www3.sympatico.ca/sarrazip/dev/

LIB_DEPENDS=	gengameng.>=4.1::devel/gengameng \
		SDL_mixer::devel/sdl-mixer \
		SDL_image::devel/sdl-image

USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
