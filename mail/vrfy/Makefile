# $OpenBSD: Makefile,v 1.14 2003/02/22 00:44:26 rohee Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#

COMMENT=		"verify email addresses and mailing lists"

DISTNAME=		vrfy_990522
PKGNAME=		vrfy-99.05.22
CATEGORIES=		mail

MAINTAINER=		Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://ftp.ksut.edu.tw/FTP/Unix/Network/tools/

WRKDIST=		${WRKDIR}/

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/vrfy ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/vrfy.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vrfy
	${INSTALL_DATA} ${WRKBUILD}/RELEASE_NOTES ${PREFIX}/share/doc/vrfy

.include <bsd.port.mk>
