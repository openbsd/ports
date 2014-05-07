# $OpenBSD: Makefile,v 1.28 2014/05/07 15:42:16 kurt Exp $

COMMENT=	regression testing utility for use with the Java language

VERSION=	4.9
DISTNAME=	junit${VERSION}
REVISION=	1
PKGNAME=	junit-${VERSION}

CATEGORIES=	devel

HOMEPAGE=	http://www.junit.org/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# Common Public License - v1.0
# Commercial distribution defend and indemnify clauses
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes

# github is bad for getting reliable distfiles from.
MASTER_SITES=	http://distfiles.nl/
EXTRACT_SUFX=	.zip

MODULES=	java
MODJAVA_VER=	1.6+
MODJAVA_JRERUN=	yes

NO_BUILD=	Yes
NO_TEST=	Yes

JAR_DIR=	${PREFIX}/share/java/classes/junit/
DOC_DIR=	${PREFIX}/share/java/junit/

do-install:
	${INSTALL_DATA_DIR} ${JAR_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/README.html ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/cpl-v10.html ${DOC_DIR}
	cp ${WRKSRC}/junit-${VERSION}.jar ${JAR_DIR}/junit.jar
	cp ${WRKSRC}/junit-${VERSION}-src.jar ${JAR_DIR}/junit-src.jar
	cp -R ${WRKSRC}/doc ${DOC_DIR}
	cp -R ${WRKSRC}/javadoc ${DOC_DIR}

.include <bsd.port.mk>
