# $OpenBSD: Makefile,v 1.22 2007/12/06 15:45:23 ajacoutot Exp $

COMMENT=	3D block-dropping game

DISTNAME=	xbl-1.1.5
CATEGORIES=	games
HOMEPAGE=	http://www710.univ-lyon1.fr/ftp/xbl/xbl.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m

MASTER_SITES=	http://www710.univ-lyon1.fr/ftp/xbl/

USE_X11=	Yes
CONFIGURE_STYLE=gnu	# also uses imake
MAKE_ENV=	OPTCFLAGS='${CFLAGS}'

NO_REGRESS=	Yes

.include <bsd.port.mk>
