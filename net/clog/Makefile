# $OpenBSD: Makefile,v 1.8 2000/03/24 22:11:51 espie Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1997/11/05 11:39:40 obrien Exp $

DISTNAME=	clog-1.6
CATEGORIES=	net security
NEED_VERSION=	1.191
MASTER_SITES=	ftp://ftp.cso.uiuc.edu/pub/security/coast/unix/clog/  \
		ftp://ftp.auscert.org.au/pub/coast/mirrors/ftp.saturn.net/clog/  \
		ftp://ftp.ox.ac.uk/pub/comp/security/COAST/mirrors/ftp.saturn.net/clog/  \
		ftp://ftp.rediris.es/mirror/coast/tools/unix/clog/

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

WRKDIST=		${WRKDIR}/clog
ALL_TARGET=	freebsd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/clog ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/clog.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
