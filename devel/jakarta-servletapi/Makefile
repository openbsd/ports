# $OpenBSD: Makefile,v 1.2 2001/07/07 13:09:44 reinhard Exp $

COMMENT=	"implementation of the JSP and Java Servlet APIs"

DISTNAME=	jakarta-servletapi-3.2.2
CATEGORIES=	www devel
NEED_VERSION=	1.419
MASTER_SITES=	http://jakarta.apache.org/builds/jakarta-tomcat/release/v3.2.2/bin/

HOMEPAGE=	http://jakarta.apache.org/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

# XXX: USE_JAVA=TBD
JAVA_HOME=	${LOCALBASE}/jdk1.2-blackdown
RUN_DEPENDS=    ${JAVA_HOME}/bin/java::devel/jdk/1.2-blackdown

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes

SERVLETAPIDOCS=	${PREFIX}/share/doc/java/jakarta-servletapi

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/java/servletapi
	${INSTALL_DATA} ${WRKSRC}/lib/servlet.jar ${PREFIX}/lib/java/servletapi
	${INSTALL_DATA_DIR} ${SERVLETAPIDOCS}/api
	@cd ${WRKDIST}/docs/api && tar cf - . | (cd ${SERVLETAPIDOCS} && tar -xf -)

.include <bsd.port.mk>
