# $OpenBSD: Makefile,v 1.24 2013/03/11 10:50:09 espie Exp $

COMMENT=	implementation of the JSP and Java Servlet APIs

V=		3.2.4
DISTNAME=	jakarta-servletapi-${V}
REVISION=	13
CATEGORIES=	www devel
MASTER_SITES=	http://archive.apache.org/dist/jakarta/tomcat-3/archive/v${V}/bin/
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://jakarta.apache.org/

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	java
MODJAVA_VER=	1.3+

NO_BUILD=	Yes
NO_TEST=	Yes

SERVLETAPIDOCS=	${PREFIX}/share/doc/java/jakarta-servletapi

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/java/servletapi
	${INSTALL_DATA} ${WRKSRC}/lib/servlet.jar ${PREFIX}/lib/java/servletapi
	${INSTALL_DATA_DIR} ${SERVLETAPIDOCS}/api
	@cd ${WRKDIST}/docs/api && tar cf - . | (cd ${SERVLETAPIDOCS} && tar -xf -)

.include <bsd.port.mk>
