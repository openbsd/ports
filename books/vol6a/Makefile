# $OpenBSD: Makefile,v 1.4 2012/10/29 11:29:51 espie Exp $

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
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.oreilly.com/catalog/motifref2/vol6a/
EXTRACT_ONLY=

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

INSTALL_LOC=	${PREFIX}/share/doc/oreilly-x

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} ${INSTALL_LOC}/vol6a.pdf

.include <bsd.port.mk>
