# $OpenBSD: Makefile,v 1.5 2000/03/05 23:00:33 jakob Exp $

DISTNAME=	rxp-1.0.9
CATEGORIES=	textproc

MAINTAINER=     jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	ftp://ftp.cogsci.ed.ac.uk/pub/richard/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rxp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rxp.1 ${PREFIX}/man/man1/rxp.1

.include <bsd.port.mk>
