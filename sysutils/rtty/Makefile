# $OpenBSD: Makefile,v 1.5 2000/02/12 06:30:04 turan Exp $
#

DISTNAME=       rtty-3.2
CATEGORIES=	sysutils

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=   ftp://ftp.vix.com/pub/vixie/
NEED_VERSION=	1.191

WRKDIST=	${WRKDIR}

post-install:
	@${INSTALL_DATA} ${WRKDIR}/README ${PREFIX}/rtty

.include <bsd.port.mk>
