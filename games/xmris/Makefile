# $OpenBSD: Makefile,v 1.4 1999/09/27 20:38:52 brad Exp $

DISTNAME=	xmris.4.04
PKGNAME=	xmris-4.04
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= games
EXTRACT_SUFX=	.tgz

NO_CDROM=	"NOFEE:	Can not sell"

MAINTAINER=	angelos@openbsd.org

USE_GMAKE=	yes
USE_IMAKE=      yes
MAKE_FLAGS=	XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults -f
ALL_TARGET=	xmris

.include <bsd.port.mk>
