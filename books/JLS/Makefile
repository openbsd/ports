# $OpenBSD: Makefile,v 1.1.1.1 2005/01/06 15:37:14 ian Exp $

COMMENT=        "Sun's official Java Language Specification"

VERSION=	2.0
PKGNAME=	JLS-${VERSION}
DISTNAME=	langspec-${VERSION}
DISTFILES=	${DISTNAME}.pdf
CATEGORIES=	books

HOMEPAGE=	http://java.sun.com/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Copyright
PERMIT_PACKAGE_FTP=	Copyright
PERMIT_DISTFILES_CDROM=	Copyright
PERMIT_DISTFILES_FTP=	Copyright

MASTER_SITES=	ftp://ftp.javasoft.com/docs/specs/

EXTRACT_ONLY=

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

INSTALL_LOC=	${PREFIX}/share/doc/java

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} ${INSTALL_LOC}/JLS-${VERSION}.pdf

.include <bsd.port.mk>
