# $OpenBSD: Makefile,v 1.27 2019/07/14 00:39:35 naddy Exp $

COMMENT=	convert solar calendar to lunar calendar

DISTNAME=	lunar-2.1
PKGNAME=	zh-lunar-2.1
REVISION =	1
FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES=	chinese

MASTER_SITES=   http://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/c-utils/

PERMIT_PACKAGE=	Yes

WANTLIB=		c

ALL_TARGET=

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/chinese
	${INSTALL_PROGRAM} ${WRKSRC}/lunar ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/lunar.bitmap ${PREFIX}/share/chinese
	${INSTALL_MAN} ${WRKSRC}/lunar.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
