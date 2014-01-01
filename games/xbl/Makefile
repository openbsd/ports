# $OpenBSD: Makefile,v 1.29 2014/01/01 20:46:28 naddy Exp $

COMMENT=	3D block-dropping game

DISTNAME=	xbl-1.1.5
REVISION =	0
CATEGORIES=	games
HOMEPAGE=	http://www710.univ-lyon1.fr/ftp/xbl/xbl.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m pthread-stubs xcb

MASTER_SITES=	http://www710.univ-lyon1.fr/ftp/xbl/

BUILD_DEPENDS +=	devel/imake
CONFIGURE_STYLE=gnu	# also uses imake
MAKE_ENV=	OPTCFLAGS='${CFLAGS}'

NO_TEST=	Yes

.include <bsd.port.mk>
