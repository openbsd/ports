# $OpenBSD: Makefile,v 1.2 2001/12/28 23:25:49 pvalchev Exp $

COMMENT=	"image viewer for X"

VERSION=	1.4
DISTNAME=	iview-${VERSION}
CATEGORIES=	graphics x11
NEED_VERSION=	1.419

HOMEPAGE=	http://math.smsu.edu/~erik/software.php?id=63

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://math.smsu.edu/~erik/files/

LIB_DEPENDS=	SDL_image::devel/sdl-image

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include"

.include <bsd.port.mk>
