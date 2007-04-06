# $OpenBSD: Makefile,v 1.18 2007/04/06 22:21:30 espie Exp $

COMMENT=		"verify email addresses and mailing lists"

DISTNAME=		vrfy_990522
PKGNAME=		vrfy-99.05.22p0
CATEGORIES=		mail

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		http://ftp.ksut.edu.tw/FTP/Unix/Network/tools/
EXTRACT_SUFX=		.tar.Z

WRKDIST=		${WRKDIR}/
MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}" RES=""

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/vrfy ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/vrfy.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vrfy
	${INSTALL_DATA} ${WRKBUILD}/RELEASE_NOTES ${PREFIX}/share/doc/vrfy

.include <bsd.port.mk>
