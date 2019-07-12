# $OpenBSD: Makefile,v 1.8 2019/07/12 21:02:26 sthen Exp $

COMMENT=		file system/VFS layer stress tester

DISTNAME=		fsstress-1.0
REVISION =		1
EXTRACT_SUFX=		.tgz
CATEGORIES=		sysutils

MAINTAINER=		Bob Beck <beck@openbsd.org>

# GPLv2 (only)
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://bofh.ucs.ualberta.ca/beck/fsstress/

NO_TEST=	Yes
WANTLIB=	c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fsstress ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fsstress
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fsstress
	${INSTALL_DATA} ${WRKSRC}/dotest.sample ${PREFIX}/share/doc/fsstress

.include <bsd.port.mk>
