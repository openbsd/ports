# $OpenBSD: Makefile,v 1.2 2001/07/07 13:13:37 reinhard Exp $

# Build just the Tomcat connector for our in-tree Apache
COMMENT=	"Tomcat (Servlet/JSP) - Apache Connector"

VER=		3.2.2
PKGNAME=	jserv-${VER}
DISTNAME=	jakarta-tomcat-${VER}-src
CATEGORIES=	www
NEED_VERSION=	1.419
MASTER_SITES=	http://jakarta.apache.org/builds/jakarta-tomcat/release/v3.2.2/src/

HOMEPAGE=	http://jakarta.apache.org/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

# XXX: USE_JAVA=TBD
JAVA_HOME=	${LOCALBASE}/jdk1.2-blackdown
BUILD_DEPENDS=	${JAVA_HOME}/bin/java::devel/jdk/1.2-blackdown 
RUN_DEPENDS=	${LOCALBASE}/tomcat/bin/tomcat.sh::www/jakarta-tomcat

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-build:
	cd ${WRKSRC}/src/native/apache/jserv && /usr/sbin/apxs -c *.c -o mod_jserv.so

post-build:
	strip ${WRKSRC}/src/native/apache/jserv/mod_jserv.so

do-install:
	sed 's,y0y0y0,${TRUEPREFIX},' \
		<${FILESDIR}/jserv-enable >${WRKSRC}/jserv-enable
	${INSTALL_SCRIPT} ${WRKSRC}/jserv-enable ${PREFIX}/sbin/jserv-enable
	${INSTALL_DATA} ${WRKSRC}/src/native/apache/jserv/mod_jserv.so ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jserv
	${INSTALL_DATA} ${FILESDIR}/server.xml ${PREFIX}/share/examples/jserv

.include "bsd.port.mk"
