# $OpenBSD: Makefile,v 1.3 2000/02/12 08:02:32 turan Exp $

DISTNAME=	rxp-1.0.9
CATEGORIES=	textproc

MAINTAINER=     jakob@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=	ftp://ftp.cogsci.ed.ac.uk/pub/richard/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rxp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rxp.1 ${PREFIX}/man/man1/rxp.1

.include <bsd.port.mk>
