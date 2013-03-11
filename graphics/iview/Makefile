# $OpenBSD: Makefile,v 1.15 2013/03/11 11:10:53 espie Exp $

COMMENT=	image viewer for X

VERSION=	1.4
DISTNAME=	iview-${VERSION}
REVISION =	1
CATEGORIES=	graphics x11

HOMEPAGE=	http://math.smsu.edu/~erik/software.php?id=63

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	http://math.smsu.edu/~erik/files/

WANTLIB=	SDL X11 c pthread SDL_image
LIB_DEPENDS=	devel/sdl-image

USE_GROFF =	Yes

SEPARATE_BUILD=	Yes
AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	LDFLAGS="-L${X11BASE}/lib"

.include <bsd.port.mk>
