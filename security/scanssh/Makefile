# $OpenBSD: Makefile,v 1.2 2001/02/20 14:01:29 brad Exp $

DISTNAME=	scanssh-1.4
CATEGORIES=	security
NEED_VERSION=	1.352
MASTER_SITES=	http://www.monkey.org/~provos/

HOMEPAGE=	http://www.monkey.org/~provos/scanssh/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

WRKDIST=	${WRKDIR}/scanssh

.include <bsd.port.mk>
