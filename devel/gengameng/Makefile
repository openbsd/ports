# $OpenBSD: Makefile,v 1.8 2002/12/29 20:19:10 fgsch Exp $

COMMENT=	"X11 game engine library"

VERSION=	4.0
DISTNAME=	gengameng-${VERSION}
CATEGORIES=	devel x11

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www3.sympatico.ca/sarrazip/dev/

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltmain_sh \
		patch-*

BUILD_DEPENDS=	automake::devel/automake
LIB_DEPENDS=	SDL::devel/sdl \
		SDL_image::devel/sdl-image

USE_X11=	Yes

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
