# $OpenBSD: Makefile,v 1.5 2004/02/01 20:07:41 sturm Exp $

COMMENT=        "Zope documentation"

DISTNAME=	ZopeBook-2_6
PKGNAME=	${DISTNAME:L:S/_/./}
CATEGORIES=	books

HOMEPAGE=	http://zope.org/Documentation/Books/ZopeBook/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

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
PKG_ARCH=	*

INSTALL_LOC=	${PREFIX}/share/doc/zopebook

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} ${INSTALL_LOC}

.include <bsd.port.mk>
