# $OpenBSD: Makefile,v 1.20 2009/11/09 11:03:26 sthen Exp $

COMMENT=	regression testing utility for use with the Java language

VERSION=	3.8.2
DISTNAME=	junit${VERSION}
PKGNAME=	junit-${VERSION}p5
INSTALLDIR=	${PKGNAME}
SUBST_VARS+=	INSTALLDIR
CATEGORIES=	java devel

HOMEPAGE=	http://www.junit.org/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# Common Public License - v1.0
# Commercial distribution defend and indemnify clauses
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=junit/}
EXTRACT_SUFX=	.zip 

MODULES=	java
MODJAVA_VER=	1.4+
MODJAVA_JRERUN=	yes

BUILD_DEPENDS=	:apache-ant-*:devel/apache-ant

MAKE_ENV=	JAVA_HOME=${JAVA_HOME}

post-extract:
		cp ${FILESDIR}/build.xml ${WRKDIST}

do-build:
		@cd ${WRKDIST} && exec ${SETENV} ${MAKE_ENV} ant -q \
		-Dant.build.javac.source="1.4" -Dant.build.javac.target="1.4"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/${INSTALLDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/${INSTALLDIR}
	${INSTALL_DATA} ${WRKSRC}/README.html ${PREFIX}/share/java/${INSTALLDIR}
	${INSTALL_DATA} ${WRKSRC}/cpl-v10.html ${PREFIX}/share/java/${INSTALLDIR}
	cp ${WRKSRC}/*.jar ${PREFIX}/share/java/classes/${INSTALLDIR}
	cp -R ${WRKSRC}/doc ${PREFIX}/share/java/${INSTALLDIR}
	cp -R ${WRKSRC}/javadoc ${PREFIX}/share/java/${INSTALLDIR}

do-regress:
	${JAVA_HOME}/bin/java -cp ${WRKSRC}/build junit.tests.AllTests

.include <bsd.port.mk> 
