# $OpenBSD: Makefile,v 1.6 2000/02/10 23:14:34 espie Exp $

DISTNAME=	9wm-1.1
CATEGORIES=	plan9
MASTER_SITES=	ftp://ftp.mathcs.emory.edu/pub/arnold/
EXTRACT_SUFX=	.shar.gz
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

WRKDIST=	${WRKDIR}
EXTRACT_CMD=	gzcat
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | ${SH}
USE_IMAKE=	yes

.include <bsd.port.mk>
