# $OpenBSD: Makefile,v 1.10 2007/12/05 10:49:24 ajacoutot Exp $

COMMENT=	sdl port of xkobo
DISTNAME=	KoboDeluxe-0.4.1
PKGNAME=	${DISTNAME:L}
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}download/

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://olofson.net/kobodl/
FLAVORS=	harder
FLAVOR?=

.if ${FLAVOR:L:Mharder}
PATCH_LIST=patch-* extra-hard
.endif

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	SDL c m pthread stdc++

LIB_DEPENDS=	SDL_image::devel/sdl-image

USE_X11=	Yes

FAKE=		all

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	sdlconf_args=--prefix=${DEPBASE}

.include <bsd.port.mk>
