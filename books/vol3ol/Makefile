# $OpenBSD: Makefile,v 1.5 2019/07/12 20:43:44 sthen Exp $

COMMENT=        O'Reilly Volume 3: Users Guide, Open Look

VERSION=	1.0
# one could argue for 0.9 since it was never published
PKGNAME=	vol3ol-${VERSION}
DISTNAME=	vol3ol
CATEGORIES=	books

HOMEPAGE=	http://www.oreilly.com/openbook/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# Open Publication License 
PERMIT_PACKAGE=	Yes

MASTER_SITES=	ftp://ftp.ora.com/pub/openlook/
DISTFILES=	${DISTNAME}.pdf
EXTRACT_ONLY=

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

INSTALL_LOC=	${PREFIX}/share/doc/oreilly-x

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} ${INSTALL_LOC}

.include <bsd.port.mk>
