# $OpenBSD: Makefile,v 1.5 2002/04/04 11:28:39 reinhard Exp $

COMMENT=	"Java servlet 2.2 and Java server pages 1.1 server"

# Requires a JVM
ONLY_FOR_ARCHS=	i386

V=		3.2.4
DISTNAME=	jakarta-tomcat-${V}
CATEGORIES=	www
NEED_VERSION=	1.516
MASTER_SITES=	http://jakarta.apache.org/builds/jakarta-tomcat/release/v${V}/bin/
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://jakarta.apache.org/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

JDK_VERSION=	1.3.1-linux
JAVA_HOME=	${LOCALBASE}/jdk${JDK_VERSION}
RUN_DEPENDS=	:jdk-linux->1.3:devel/jdk/1.3-linux

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKSRC=		${WRKDIR}/${DISTNAME}

DIRS=		bin conf doc lib logs src webapps
CONFDIR=	/etc/tomcat
TOMCATDIR=	/var/tomcat
SUBST_VARS=	TOMCATDIR CONFDIR

post-patch:
	@perl -pi -e 's|JAVA_HOME|${JAVA_HOME}|g' ${WRKSRC}/conf/workers.properties
	@perl -pi -e 's|TOMCATDIR|${TOMCATDIR}|g' ${WRKSRC}/bin/tomcat.sh
	@perl -pi -e 's|PREFIX|${PREFIX}|g' ${WRKSRC}/bin/tomcat.sh
	@cd ${WRKDIST}/conf && perl -pi -e 's,^M,,g' *

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/tomcat
	@${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/tomcat
	@cd ${WRKDIST}/bin && chmod +x *.sh	# for .zip file
	@cd ${WRKDIST} && tar cf - ${DIRS} | (cd ${PREFIX}/tomcat && tar -xf -)
	@${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/tomcat/conf

.include "bsd.port.mk"
