# $OpenBSD: Makefile,v 1.5 2001/03/24 19:55:34 jakob Exp $

COMMENT=	SSH remote version scanner

DISTNAME=	scanssh-1.5
CATEGORIES=	security
NEED_VERSION=	1.363

MASTER_SITES=	http://www.monkey.org/~provos/ \
		ftp://ftp.openbsd.org/pub/OpenBSD/OpenSSH/scanssh/

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
