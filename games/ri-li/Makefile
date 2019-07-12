# $OpenBSD: Makefile,v 1.16 2019/07/12 20:46:23 sthen Exp $

COMMENT=	drive a toy wood engine

DISTNAME=	Ri-li-2.0.1
CATEGORIES=	games
REVISION=	1

HOMEPAGE=	http://ri-li.sourceforge.net

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += SDL SDL_mixer c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ri-li/}
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	devel/sdl-mixer \
		devel/sdl

SDL_CONFIG=	${LOCALBASE}/bin/sdl-config
AUTOCONF_VERSION=2.59

CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	CPPFLAGS="`${SDL_CONFIG} --cflags` \
		-I${X11BASE}/include \
		-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-sdl-config=${SDL_CONFIG}

pre-configure:
	perl -pi -e 's|-lSDL |`${SDL_CONFIG} --libs`|' ${WRKSRC}/configure
	perl -pi -e 's|gentoo||' ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
