# $OpenBSD: Makefile,v 1.2 1998/11/09 01:49:56 marc Exp $
#

DISTNAME=       xasteroids
PKGNAME=	xasteroids-5.0
CATEGORIES=	games

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://ftp.cdrom.com/pub/X11/R5contrib/
EXTRACT_SUFX=	.sh.Z
EXTRACT_CMD=	( cd ${WRKDIR}; zcat | sh -s )
EXTRACT_ARGS=	<

USE_IMAKE=	yes
NO_WRKSUBDIR=	yes

.include <bsd.port.mk>
