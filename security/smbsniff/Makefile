# $OpenBSD: Makefile,v 1.1.1.1 2001/02/04 19:30:07 reinhard Exp $
# Original from: Frederic Lavecot <Frederic.Lavecot@hsc.fr>

DISTNAME=	smbsniffer
PKGNAME=	smbsniff-0.1
CATEGORIES=	security net
NEED_VERSION=	1.352
MASTER_SITES=	http://www.hsc.fr/ressources/outils/smbsniff/download/

HOMEPAGE=	http://www.hsc.fr/ressources/outils/smbsniff/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/smbsniff ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/smbsniff.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smbsniff
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/smbsniff

.include <bsd.port.mk>
