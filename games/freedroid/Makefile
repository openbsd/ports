# $OpenBSD: Makefile,v 1.11 2017/10/23 17:10:49 sthen Exp $

COMMENT=	clone of the commodore 64 game paradroids
DISTNAME=	freedroid-1.0.2
REVISION =	1
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freedroid/}

HOMEPAGE=	http://freedroid.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	SDL X11 Xext c jpeg m png pthread usbhid vorbis \
		xcb z SDL_image SDL_mixer


CONFIGURE_STYLE=gnu

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer

.include <bsd.port.mk>
