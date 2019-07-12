# $OpenBSD: Makefile,v 1.6 2019/07/12 20:43:44 sthen Exp $

COMMENT=        O'Reilly Volume 6a: Motif Programming Manual

# Second Edition
VERSION=	2.0
PKGNAME=	vol6a-${VERSION}
DISTNAME=	Vol6a
DISTFILES=	${DISTNAME}.pdf
CATEGORIES=	books

HOMEPAGE=	http://www.oreilly.com/openbook/motif

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# Open Publication License 
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://www.oreilly.com/catalog/motifref2/vol6a/
EXTRACT_ONLY=

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

INSTALL_LOC=	${PREFIX}/share/doc/oreilly-x

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} ${INSTALL_LOC}/vol6a.pdf

.include <bsd.port.mk>
