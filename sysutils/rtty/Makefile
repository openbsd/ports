# $OpenBSD: Makefile,v 1.7 2000/03/24 22:12:00 espie Exp $
#

DISTNAME=       rtty-3.2
CATEGORIES=	sysutils
NEED_VERSION=	1.191

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=   ftp://ftp.vix.com/pub/vixie/

WRKDIST=	${WRKDIR}

post-install:
	@${INSTALL_DATA} ${WRKDIR}/README ${PREFIX}/rtty

.include <bsd.port.mk>
