# $OpenBSD: Makefile,v 1.9 2002/06/10 03:14:35 wilfried Exp $

BROKEN=	"HANDLER THREAD PROBLEM: java.net.SocketException: Resource temporarily unavailable"

# Build just the Tomcat connector for our in-tree Apache
COMMENT=	"Tomcat (Servlet/JSP) - Apache Connector"

# This port currently only works with archs supporting dynamic loading,
# that have Apache that supports DSO's and requires Jakarta-Tomcat (which 
# requires a JVM).
ONLY_FOR_ARCHS=	i386

V=		3.2.4
PKGNAME=	jserv-${V}
DISTNAME=	jakarta-tomcat-${V}-src
CATEGORIES=	www
NEED_VERSION=	1.504
MASTER_SITES=	http://jakarta.apache.org/builds/jakarta-tomcat/release/v${V}/src/
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://jakarta.apache.org/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

RUN_DEPENDS=	:jakarta-tomcat-3.*:www/jakarta-tomcat/v3

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

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
