# $OpenBSD: Makefile,v 1.12 2002/03/21 21:09:17 espie Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#

COMMENT=		"verify email addresses and mailing lists"

DISTNAME=		vrfy_990522
PKGNAME=		vrfy-99.05.22
CATEGORIES=		mail
NEED_VERSION=		1.515

MAINTAINER=		Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.nikhef.nl/pub/network/
EXTRACT_SUFX=		.tar.Z

WRKDIST=		${WRKDIR}/

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/vrfy ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/vrfy.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vrfy
	${INSTALL_DATA} ${WRKBUILD}/RELEASE_NOTES ${PREFIX}/share/doc/vrfy

.include <bsd.port.mk>
