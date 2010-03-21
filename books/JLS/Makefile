# $OpenBSD: Makefile,v 1.5 2010/03/21 16:12:01 ian Exp $

COMMENT=        Sun's official Java Language Specification

VERSION=	3.0
PKGNAME=	JLS-${VERSION}
DISTNAME=	langspec-${VERSION}
DISTFILES=	${DISTNAME}.pdf
CATEGORIES=	books
SUBST_VARS+=	VERSION

HOMEPAGE=	http://java.sun.com/docs/books/jls/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# http://java.sun.com/docs/books/jls/third_edition/html/jcopyright.html
PERMIT_PACKAGE_CDROM=	Copyright
PERMIT_PACKAGE_FTP=	Copyright
PERMIT_DISTFILES_CDROM=	Copyright
PERMIT_DISTFILES_FTP=	Copyright

MASTER_SITES=	http://java.sun.com/docs/books/jls/download/

EXTRACT_ONLY=

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

INSTALL_LOC=	${PREFIX}/share/doc/java

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} ${INSTALL_LOC}/JLS-${VERSION}.pdf

.include <bsd.port.mk>
