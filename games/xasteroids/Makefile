# $OpenBSD: Makefile,v 1.5 1999/09/23 21:43:53 brad Exp $

DISTNAME=       xasteroids
PKGNAME=	xasteroids-5.0
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.cdrom.com/pub/X11/R5contrib/
EXTRACT_SUFX=	.sh.Z

NEED_VERSION=	1.91

EXTRACT_CMD=		${GZCAT}
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS=	| ${SH} -s

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes
NO_WRKSUBDIR=	yes

.include <bsd.port.mk>
