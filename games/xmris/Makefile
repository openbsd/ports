# $OpenBSD: Makefile,v 1.3 1998/11/09 01:50:00 marc Exp $
#

DISTNAME=	xmris.4.04
PKGNAME=	xmris-4.04
CATEGORIES=	games

NO_CDROM=	"NOFEE:	Can not sell"

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games
EXTRACT_SUFX=	.tgz

USE_GMAKE=	yes
USE_IMAKE=      yes
MAKE_FLAGS=	XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults -f
ALL_TARGET=	xmris

.include <bsd.port.mk>
