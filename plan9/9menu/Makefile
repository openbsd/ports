# $OpenBSD: Makefile,v 1.3 1999/05/12 19:11:35 brad Exp $

DISTNAME=	9menu-1.5
CATEGORIES=	plan9
MASTER_SITES=	ftp://ftp.mathcs.emory.edu/pub/arnold/
EXTRACT_SUFX=	.shar.gz

MAINTAINER=	angelos@openbsd.org

USE_X11=	yes
NO_WRKSUBDIR=	yes
EXTRACT_CMD=		zcat
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=	|sh

.include <bsd.port.mk>
