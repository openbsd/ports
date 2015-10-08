# $OpenBSD: Makefile,v 1.42 2015/10/08 11:34:15 jca Exp $

COMMENT=		C/C++ source code auditing tool

DISTNAME=		flawfinder-1.31
CATEGORIES=		devel security

HOMEPAGE=		http://www.dwheeler.com/flawfinder/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

MODULES=		lang/python

MODPY_ADJ_FILES=	flawfinder

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

DOC_DIR=		${PREFIX}/share/doc/flawfinder

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/flawfinder ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/flawfinder.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/flawfinder.{pdf,ps} ${DOC_DIR}

.include <bsd.port.mk>
