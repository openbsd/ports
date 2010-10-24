# $OpenBSD: Makefile,v 1.12 2010/10/24 21:19:02 ajacoutot Exp $

COMMENT=	zombies clone

VERSION=	1.0.0
DISTNAME=	sdlzombies-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games x11

HOMEPAGE=	http://hocwp.free.fr/sdlzombies.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL X11 Xext c m pthread pthread-stubs usbhid xcb

MASTER_SITES=	http://hocwp.free.fr/

LIB_DEPENDS=	SDL_image::devel/sdl-image \
		SDL_mixer::devel/sdl-mixer


CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlzombies
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/sdlzombies/

.include <bsd.port.mk>
