# $OpenBSD: Makefile,v 1.4 1999/06/03 00:52:13 brad Exp $

DISTNAME=	9menu-1.5
CATEGORIES=	plan9
MASTER_SITES=	ftp://ftp.mathcs.emory.edu/pub/arnold/
EXTRACT_SUFX=	.shar.gz

MAINTAINER=	angelos@openbsd.org

USE_X11=	yes
NO_WRKSUBDIR=	yes
EXTRACT_CMD=	${GZCAT}
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | ${SH}

.include <bsd.port.mk>
