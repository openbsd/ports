# $OpenBSD: Makefile,v 1.4 1999/10/26 04:56:38 turan Exp $

BROKEN=		bad packing lists

DISTNAME=	9wm-1.1
CATEGORIES=	plan9
MASTER_SITES=	ftp://ftp.mathcs.emory.edu/pub/arnold/
EXTRACT_SUFX=	.shar.gz

MAINTAINER=	angelos@openbsd.org

NO_WRKSUBDIR=	yes
EXTRACT_CMD=	${GZCAT}
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | ${SH}
USE_IMAKE=	yes

.include <bsd.port.mk>
