# $OpenBSD: Makefile,v 1.25 2019/07/12 20:46:20 sthen Exp $

COMMENT=	sdl port of xkobo
DISTNAME=	KoboDeluxe-0.5.1
PKGNAME=	${DISTNAME:L}
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}download/
REVISION=	3

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://olofson.net/kobodl/
FLAVORS=	harder
FLAVOR?=

.if ${FLAVOR:Mharder}
PATCH_LIST=patch-* extra-hard
.endif

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	SDL c m pthread ${COMPILER_LIBCXX} SDL_image

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	devel/sdl-image

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	sdlconf_args=--prefix=${LOCALBASE}

pre-configure:
	@cp ${FILESDIR}/missile* ${WRKSRC}/data/gfx/

.include <bsd.port.mk>
