# $OpenBSD: Makefile,v 1.2 2002/03/12 12:57:28 reinhard Exp $

COMMENT=	"java servlet 2.2 and java server pages 1.1 server"

V=		3.2.4
DISTNAME=	jakarta-tomcat-${V}
CATEGORIES=	www
NEED_VERSION=	1.504
MASTER_SITES=	http://jakarta.apache.org/builds/jakarta-tomcat/release/v${V}/bin/
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://jakarta.apache.org/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

JDK_VERSION=	1.2-blackdown
JAVA_HOME=	${LOCALBASE}/jdk${JDK_VERSION}
RUN_DEPENDS=	:jdk-blackdown-1.2:devel/jdk/${JDK_VERSION}

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
