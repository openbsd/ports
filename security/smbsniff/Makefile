# $OpenBSD: Makefile,v 1.3 2002/03/21 21:25:52 espie Exp $
# Original from: Frederic Lavecot <Frederic.Lavecot@hsc.fr>

COMMENT=	'sniffer for LanManager environment (m$/samba workstations)'
DISTNAME=	smbsniff-0.0.1b
CATEGORIES=	security net
NEED_VERSION=	1.515
MASTER_SITES=	${HOMEPAGE}/download/

HOMEPAGE=	http://www.hsc.fr/ressources/outils/smbsniff

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/smbsniff ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKDIST}/smbsniff.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smbsniff
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/smbsniff

.include <bsd.port.mk>
