# $OpenBSD: Makefile,v 1.1.1.1 2003/04/12 15:22:10 espie Exp $

COMMENT=	"sdl port of xkobo"
DISTNAME=	KoboDeluxe-0.4pre8
PKGNAME=	${DISTNAME:L}
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://olofson.net/skobo/
FLAVORS=	harder
FLAVOR?=

.if ${FLAVOR:L:Mharder}
PATCH_LIST=patch-* extra-hard
.endif

MAINTAINER=	Jolan Luff <jolan@crypotonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	SDL_image::devel/sdl-image

USE_X11=	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
