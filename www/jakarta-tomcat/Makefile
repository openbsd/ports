# $OpenBSD: Makefile,v 1.3 2001/07/07 13:12:18 reinhard Exp $

COMMENT=	"java servlet 2.2 and java server pages 1.1 server"

DISTNAME=	jakarta-tomcat-3.2.2
CATEGORIES=	www
NEED_VERSION=	1.419
MASTER_SITES=	http://jakarta.apache.org/builds/jakarta-tomcat/release/v3.2.2/bin/

HOMEPAGE=	http://jakarta.apache.org/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

# XXX: USE_JAVA=TBD
JAVA_HOME=	${LOCALBASE}/jdk1.2-blackdown
RUN_DEPENDS=	${JAVA_HOME}/bin/java::devel/jdk/1.2-blackdown 

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes

WRKSRC=		${WRKDIR}/${DISTNAME}

DIRS=	bin conf doc lib logs src webapps 
CONFDIR=	/etc/tomcat
TOMCATDIR=	/var/tomcat
SUBST_VARS=	TOMCATDIR CONFDIR

post-patch:
	@perl -pi -e 's|JAVA_HOME|${JAVA_HOME}|g' ${WRKSRC}/conf/workers.properties
	@perl -pi -e 's|TOMCATDIR|${TOMCATDIR}|g' ${WRKSRC}/bin/tomcat.sh
	@perl -pi -e 's|PREFIX|${PREFIX}|g' ${WRKSRC}/bin/tomcat.sh

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/tomcat
	@${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/tomcat
	@cd ${WRKDIST} && tar cf - ${DIRS} | (cd ${PREFIX}/tomcat && tar -xf -)

.include "bsd.port.mk"
