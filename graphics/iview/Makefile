# $OpenBSD: Makefile,v 1.6 2005/11/03 18:28:55 naddy Exp $

COMMENT=	"image viewer for X"

VERSION=	1.4
DISTNAME=	iview-${VERSION}
CATEGORIES=	graphics x11

HOMEPAGE=	http://math.smsu.edu/~erik/software.php?id=63

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL X11 Xext c m pthread usbhid

MASTER_SITES=	http://math.smsu.edu/~erik/files/

LIB_DEPENDS=	SDL_image::devel/sdl-image

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	LDFLAGS="-L${X11BASE}/lib"

.include <bsd.port.mk>
