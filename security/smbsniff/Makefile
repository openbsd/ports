# $OpenBSD: Makefile,v 1.7 2007/09/17 14:14:25 merdely Exp $

COMMENT=	sniffer for LanManager environment (ms/samba workstations)
DISTNAME=	smbsniff-0.0.1b
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security net

MASTER_SITES=	${HOMEPAGE}/download/

HOMEPAGE=	http://www.hsc.fr/ressources/outils/smbsniff

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		c pcap

WRKDIST=	${WRKDIR}
MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/smbsniff ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKDIST}/smbsniff.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smbsniff
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/smbsniff

.include <bsd.port.mk>
