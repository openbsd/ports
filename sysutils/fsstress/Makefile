# $OpenBSD: Makefile,v 1.5 2010/11/20 17:22:41 espie Exp $

COMMENT=		file system/VFS layer stress tester

DISTNAME=		fsstress-1.0
REVISION =		0
EXTRACT_SUFX=		.tgz
CATEGORIES=		sysutils

MAINTAINER=		Bob Beck <beck@openbsd.org>

# GPLv2 (only)
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://bofh.ucs.ualberta.ca/beck/fsstress/

NO_REGRESS=	Yes
WANTLIB=	c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fsstress ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fsstress
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fsstress
	${INSTALL_DATA} ${WRKSRC}/dotest.sample ${PREFIX}/share/doc/fsstress

.include <bsd.port.mk>
