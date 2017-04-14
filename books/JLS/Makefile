# $OpenBSD: Makefile,v 1.7 2017/04/14 14:01:47 ian Exp $

COMMENT=	Sun's official Java Language Specification

MAJOR=		8
PKGNAME=	JLS-${MAJOR}.0
DISTNAME=	jls${MAJOR}
DISTFILES=	${DISTNAME}.pdf

CATEGORIES=	books

SUBST_VARS=	DISTFILES

HOMEPAGE=	https://docs.oracle.com/javase/specs/jls/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# http://java.sun.com/docs/books/jls/third_edition/html/jcopyright.html
PERMIT_PACKAGE_CDROM=	Copyright
PERMIT_PACKAGE_FTP=	Copyright
PERMIT_DISTFILES_FTP=	Copyright

MASTER_SITES=	https://docs.oracle.com/javase/specs/jls/se${MAJOR}/

EXTRACT_ONLY=

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

INSTALL_LOC=	${PREFIX}/share/doc/java

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} ${INSTALL_LOC}/${DISTFILES}

.include <bsd.port.mk>
