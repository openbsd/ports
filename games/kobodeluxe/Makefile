# $OpenBSD: Makefile,v 1.8 2006/01/27 01:12:23 jolan Exp $

COMMENT=	"sdl port of xkobo"
DISTNAME=	KoboDeluxe-0.4pre10
PKGNAME=	${DISTNAME:L}
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://olofson.net/kobodl/
FLAVORS=	harder
FLAVOR?=

.if ${FLAVOR:L:Mharder}
PATCH_LIST=patch-* extra-hard
.endif

FAKE=			all
# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		SDL X11 Xext c m pthread stdc++ usbhid

LIB_DEPENDS=	SDL_image::devel/sdl-image

USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=sdlconf_args=--prefix=${DEPBASE}

.include <bsd.port.mk>
