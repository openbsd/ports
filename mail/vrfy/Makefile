# $OpenBSD: Makefile,v 1.9 2000/10/22 14:03:25 espie Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#
DISTNAME=		vrfy_990522
PKGNAME=		vrfy-99.05.22
CATEGORIES=		mail
NEED_VERSION=		1.191

MAINTAINER=		Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.nikhef.nl/pub/network/
EXTRACT_SUFX=		.tar.Z

WRKDIST=		${WRKDIR}/

FAKE=			Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/vrfy ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/vrfy.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vrfy
	${INSTALL_DATA} ${WRKBUILD}/RELEASE_NOTES ${PREFIX}/share/doc/vrfy

.include <bsd.port.mk>
