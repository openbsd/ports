# $OpenBSD: Makefile,v 1.4 2013/03/11 11:20:26 espie Exp $

# keep in sync with classpath archs
ONLY_FOR_ARCHS=	i386 amd64 sparc64

COMMENT=        ANother Tool for Language Recognition

V=		3.4
DISTNAME=	antlr-${V}-complete
PKGNAME=	antlr3-${V}
REVISION=	1

CATEGORIES=	lang java

HOMEPAGE=	http://www.antlr.org/

# BSD (ANTLR 3 License: http://www.antlr.org/license.html)
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

EXTRACT_ONLY=	#
EXTRACT_SUFX=	.jar

NO_BUILD=	Yes
NO_TEST=	Yes

JAR_DIR=	${PREFIX}/share/java/classes/

do-install:
	${INSTALL_DATA_DIR} ${JAR_DIR}
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTNAME}.jar ${JAR_DIR}/antlr3.jar

.include <bsd.port.mk>
