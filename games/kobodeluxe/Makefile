# $OpenBSD: Makefile,v 1.19 2014/09/02 09:33:53 espie Exp $

COMMENT=	sdl port of xkobo
DISTNAME=	KoboDeluxe-0.5.1
PKGNAME=	${DISTNAME:L}
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}download/
REVISION=	1

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://olofson.net/kobodl/
FLAVORS=	harder
FLAVOR?=

.if ${FLAVOR:Mharder}
PATCH_LIST=patch-* extra-hard
.endif

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	SDL c m pthread stdc++ SDL_image

LIB_DEPENDS=	devel/sdl-image


FAKE=		all

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	sdlconf_args=--prefix=${LOCALBASE}

pre-configure:
	@cp ${FILESDIR}/missile* ${WRKSRC}/data/gfx/


.include <bsd.port.mk>
