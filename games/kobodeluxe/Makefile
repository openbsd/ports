# $OpenBSD: Makefile,v 1.14 2010/11/30 20:05:02 phessler Exp $

COMMENT=	sdl port of xkobo
DISTNAME=	KoboDeluxe-0.5.1
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

WANTLIB=	SDL c m pthread stdc++ SDL_image

LIB_DEPENDS=	devel/sdl-image


FAKE=		all

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	sdlconf_args=--prefix=${DEPBASE}

pre-configure:
	@cp ${FILESDIR}/missile* ${WRKSRC}/data/gfx/


.include <bsd.port.mk>
