# $OpenBSD: Makefile,v 1.13 2017/07/16 19:18:55 espie Exp $

COMMENT=	drive a toy wood engine

DISTNAME=	Ri-li-2.0.1
CATEGORIES=	games

HOMEPAGE=	http://ri-li.sourceforge.net

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += SDL SDL_mixer c m pthread ${COMPILER_LIBCXX}

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
