# $OpenBSD: Makefile,v 1.5 2000/02/10 23:14:34 espie Exp $

DISTNAME=	9menu-1.5
CATEGORIES=	plan9
MASTER_SITES=	ftp://ftp.mathcs.emory.edu/pub/arnold/
EXTRACT_SUFX=	.shar.gz
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

USE_X11=	yes
WRKDIST=	${WRKDIR}
EXTRACT_CMD=	gzcat
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | ${SH}

.include <bsd.port.mk>
