# $OpenBSD: Makefile,v 1.3 2003/12/16 18:54:01 sturm Exp $

COMMENT=        "Zope documentation"

DISTNAME=	ZopeBook-2_6
PKGNAME=	${DISTNAME:L:S/_/./}
CATEGORIES=	books

HOMEPAGE=	http://zope.org/Documentation/Books/ZopeBook/

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# Open Publication License 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/2_6Edition/
DISTFILES=	${DISTNAME}.pdf
EXTRACT_ONLY=

NO_BUILD=	Yes
NO_REGRESS=	Yes

INSTALL_LOC=	${PREFIX}/share/doc/zopebook

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} ${INSTALL_LOC}

.include <bsd.port.mk>
