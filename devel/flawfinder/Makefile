# $OpenBSD: Makefile,v 1.39 2013/10/18 11:29:41 naddy Exp $

COMMENT=		C/C++ source code auditing tool

DISTNAME=		flawfinder-1.27
REVISION=		4
CATEGORIES=		devel security

HOMEPAGE=		http://www.dwheeler.com/flawfinder/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

MODULES=		lang/python

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

DOC_DIR=		${PREFIX}/share/doc/flawfinder

do-configure:
	@perl -pi -e \
		"s|/usr/bin/env python|${LOCALBASE}/bin/python${MODPY_VERSION}|" \
		${WRKSRC}/flawfinder

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/flawfinder ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/flawfinder.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/flawfinder.{pdf,ps} ${DOC_DIR}

.include <bsd.port.mk>
