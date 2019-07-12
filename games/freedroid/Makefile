# $OpenBSD: Makefile,v 1.12 2019/07/12 20:46:18 sthen Exp $

COMMENT=	clone of the commodore 64 game paradroids
DISTNAME=	freedroid-1.0.2
REVISION =	1
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freedroid/}

HOMEPAGE=	http://freedroid.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	SDL X11 Xext c jpeg m png pthread usbhid vorbis \
		xcb z SDL_image SDL_mixer


CONFIGURE_STYLE=gnu

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer

.include <bsd.port.mk>
