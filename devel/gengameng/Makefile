# $OpenBSD: Makefile,v 1.4 2001/11/01 08:27:14 wilfried Exp $

COMMENT=	"X11 game engine library"

VERSION=	3.0
DISTNAME=	gengameng-${VERSION}
CATEGORIES=	devel x11
NEED_VERSION=	1.475

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www3.sympatico.ca/sarrazip/dev/

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltmain_sh \
		patch-*

LIB_DEPENDS=	SDL.0.3:sdl-*-!no_x11:devel/sdl \
		SDL_image.0.0:sdl-image-*:devel/sdl-image

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
