# $OpenBSD: Makefile,v 1.7 2003/11/27 20:11:06 sturm Exp $

COMMENT=	"implementation of the JSP and Java Servlet APIs"

V=		3.2.4
DISTNAME=	jakarta-servletapi-${V}
CATEGORIES=	www devel
MASTER_SITES=	http://archive.apache.org/dist/jakarta/tomcat-3/archive/v${V}/bin/
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://jakarta.apache.org/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

JDK_VERSION=    1.2-blackdown
JAVA_HOME=	${LOCALBASE}/jdk${JDK_VERSION}
RUN_DEPENDS= 	:jdk-blackdown-*:devel/jdk/${JDK_VERSION}

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes

SERVLETAPIDOCS=	${PREFIX}/share/doc/java/jakarta-servletapi

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/java/servletapi
	${INSTALL_DATA} ${WRKSRC}/lib/servlet.jar ${PREFIX}/lib/java/servletapi
	${INSTALL_DATA_DIR} ${SERVLETAPIDOCS}/api
	@cd ${WRKDIST}/docs/api && tar cf - . | (cd ${SERVLETAPIDOCS} && tar -xf -)

.include <bsd.port.mk>
