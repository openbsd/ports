# $OpenBSD: Makefile,v 1.52 2020/07/03 21:12:38 sthen Exp $

COMMENT=		C/C++ source code auditing tool

DISTNAME=		flawfinder-2.0.11
CATEGORIES=		devel security
REVISION=		0

HOMEPAGE=		https://www.dwheeler.com/flawfinder/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPL
PERMIT_PACKAGE =	Yes

MASTER_SITES=		${HOMEPAGE}

MODULES=		lang/python
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

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
