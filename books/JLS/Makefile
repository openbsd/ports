# $OpenBSD: Makefile,v 1.8 2019/01/06 12:57:57 ian Exp $

COMMENT=	Sun's official Java Language Specification

MAJOR=		8
PKGNAME=	JLS-${MAJOR}.0
DISTNAME=	jls${MAJOR}
DISTFILES=	${DISTNAME}.pdf
REVISION=	0

CATEGORIES=	books

SUBST_VARS=	DISTFILES

HOMEPAGE=	https://docs.oracle.com/javase/specs/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# No redistribution.
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
