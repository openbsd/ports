# $OpenBSD: Makefile,v 1.2 2011/09/06 07:20:24 jasper Exp $

# keep in sync with classpath archs
ONLY_FOR_ARCHS=	i386 amd64 sparc64

COMMENT=        parser generator for Java, C#, Python, or C++ languages

VERSION=	2.7.5
DISTNAME=	antlr-${VERSION}
PKGNAME=	antlr2-${VERSION}
REVISION=	0

CATEGORIES=	lang java

MASTER_SITES=	${HOMEPAGE}/download/

HOMEPAGE=	http://www.antlr2.org/

MAINTAINER=	Frederick C. Druseikis <fredd@engr.sc.edu>

# The "ANTLR 2 LICENSE" proclaims the software and
# its output to be in the public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes

JAR_DIR=	${PREFIX}/share/java/classes/	

do-install:
	${INSTALL_DATA_DIR} ${JAR_DIR}
	${INSTALL_DATA} ${WRKDIST}/${DISTNAME}.jar ${JAR_DIR}/antlr2.jar

.include <bsd.port.mk>
