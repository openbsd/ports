# $OpenBSD: Makefile,v 1.1.1.1 2006/10/19 10:30:43 ajacoutot Exp $

COMMENT=	"drive a toy wood engine"

DISTNAME=	Ri-li-2.0.0
CATEGORIES=	games

HOMEPAGE=	http://ri-li.sourceforge.net

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ri-li/}

WANTLIB=	c m pthread stdc++ usbhid Xext X11

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
