# $OpenBSD: Makefile,v 1.6 2000/03/23 03:49:58 turan Exp $

DISTNAME=	9menu-1.5
CATEGORIES=	plan9
MASTER_SITES=	ftp://ftp.mathcs.emory.edu/pub/arnold/
EXTRACT_SUFX=	.shar.gz
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	yes
WRKDIST=	${WRKDIR}
EXTRACT_CMD=	gzcat
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | ${SH}

.include <bsd.port.mk>
