# $OpenBSD: Makefile,v 1.3 2009/08/10 06:31:42 kili Exp $

COMMENT=	drive a toy wood engine

DISTNAME=	Ri-li-2.0.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games

HOMEPAGE=	http://ri-li.sourceforge.net

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ri-li/}

WANTLIB=	Xext X11 c m pthread pthread-stubs stdc++ usbhid xcb

EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	SDL_mixer.>=3::devel/sdl-mixer \
		SDL.>=6::devel/sdl

USE_X11=	Yes
CONFIGURE_STYLE=gnu

SDL_CONFIG=	${LOCALBASE}/bin/sdl-config
CONFIGURE_ENV=	CPPFLAGS="`${SDL_CONFIG} --cflags` \
		-I${X11BASE}/include \
		-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-sdl-config=${SDL_CONFIG}

pre-configure:
	@perl -pi -e 's|-lSDL |`${SDL_CONFIG} --libs`|' ${WRKSRC}/configure

.include <bsd.port.mk>
