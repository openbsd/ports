# $OpenBSD: Makefile,v 1.7 1999/10/28 19:53:33 jasoni Exp $

DISTNAME=       	xasteroids
PKGNAME=		xasteroids-5.0
CATEGORIES=		games
MASTER_SITES=		ftp://ftp.cdrom.com/pub/X11/R5contrib/
EXTRACT_SUFX=		.sh.Z

NEED_VERSION=		1.91

EXTRACT_CMD=		${GZCAT}
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS=	| ${SH} -s

MAINTAINER=		angelos@openbsd.org

USE_IMAKE=		yes
NO_WRKSUBDIR=		yes

.include <bsd.port.mk>
