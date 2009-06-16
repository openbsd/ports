# $OpenBSD: Makefile,v 1.1.1.1 2009/06/16 15:20:26 kurt Exp $

# keep in sync with classpath archs
ONLY_FOR_ARCHS=	i386 amd64 sparc64

COMMENT=        parser generator for Java, C#, Python, or C++ languages

VERSION=	2.7.5
DISTNAME=	antlr-${VERSION}
PKGNAME=	antlr2-${VERSION}

CATEGORIES=	lang java

MASTER_SITES=	http://www.antlr2.org/download/

HOMEPAGE=	http://www.antlr2.org

MAINTAINER=	Frederick C. Druseikis <fredd@engr.sc.edu>

# The "ANTLR 2 LICENSE" proclaims the software and
# its output to be in the public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java
	${INSTALL_DATA} ${WRKDIST}/${DISTNAME}.jar ${PREFIX}/share/java

.include <bsd.port.mk>
