# $OpenBSD: Makefile,v 1.9 2011/11/17 22:57:18 ajacoutot Exp $

COMMENT=	drive a toy wood engine

DISTNAME=	Ri-li-2.0.1
CATEGORIES=	games

HOMEPAGE=	http://ri-li.sourceforge.net

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += SDL SDL_mixer c m pthread stdc++

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
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-sdl-config=${SDL_CONFIG}

pre-configure:
	perl -pi -e 's|-lSDL |`${SDL_CONFIG} --libs`|' ${WRKSRC}/configure
	perl -pi -e 's|gentoo||' ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
