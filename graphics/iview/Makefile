# $OpenBSD: Makefile,v 1.19 2019/07/12 21:02:21 sthen Exp $

COMMENT=	image viewer for X

VERSION=	1.4
DISTNAME=	iview-${VERSION}
REVISION =	3
CATEGORIES=	graphics x11

HOMEPAGE=	http://math.smsu.edu/~erik/software.php?id=63

PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://math.smsu.edu/~erik/files/

WANTLIB=	SDL X11 c pthread SDL_image
LIB_DEPENDS=	devel/sdl-image

SEPARATE_BUILD=	Yes
AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	LDFLAGS="-L${X11BASE}/lib"

.include <bsd.port.mk>
