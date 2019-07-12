# $OpenBSD: Makefile,v 1.31 2019/07/12 20:46:26 sthen Exp $

COMMENT=	3D block-dropping game

DISTNAME=	xbl-1.1.5
REVISION =	1
CATEGORIES=	games
HOMEPAGE=	http://www710.univ-lyon1.fr/ftp/xbl/xbl.html

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m xcb

MASTER_SITES=	http://www710.univ-lyon1.fr/ftp/xbl/

BUILD_DEPENDS +=	devel/imake
CONFIGURE_STYLE=gnu	# also uses imake
MAKE_ENV=	OPTCFLAGS='${CFLAGS}'

NO_TEST=	Yes

.include <bsd.port.mk>
