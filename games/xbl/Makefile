# $OpenBSD: Makefile,v 1.18 2004/11/28 22:41:22 espie Exp $

COMMENT=	"3D block-dropping game"

DISTNAME=	xbl-1.1.2
CATEGORIES=	games
HOMEPAGE=	http://www710.univ-lyon1.fr/ftp/xbl/xbl.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m

MASTER_SITES=	ftp://ftp710.univ-lyon1.fr/pub/xbl/

USE_X11=	Yes
CONFIGURE_STYLE=gnu	# also uses imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
