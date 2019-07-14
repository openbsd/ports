# $OpenBSD: Makefile,v 1.10 2019/07/14 02:16:51 naddy Exp $

COMMENT=	Oracle's official Java language specification

MAJOR=		12
PKGNAME=	JLS-${MAJOR}.0
DISTNAME=	jls${MAJOR}
DISTFILES=	${DISTNAME}.pdf

CATEGORIES=	books

SUBST_VARS=	DISTFILES

HOMEPAGE=	https://docs.oracle.com/javase/specs/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# No redistribution.
PERMIT_PACKAGE=		Copyright
PERMIT_DISTFILES=	Copyright

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
