# $OpenBSD: Makefile,v 1.10 2003/12/15 21:21:18 sturm Exp $

COMMENT=	"Java servlet 2.3 and Java server pages 1.2 server"

# Requires a JVM
ONLY_FOR_ARCHS=	i386

V=		4.1.29
DISTNAME=	jakarta-tomcat-${V}
CATEGORIES=	www

MASTER_SITES=	${MASTER_SITE_APACHE:=jakarta/tomcat-4/v$V/bin/} \
		http://archive.apache.org/dist/jakarta/tomcat-4/archive/v${V}/bin/

HOMEPAGE=	http://jakarta.apache.org/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

JDK_VERSION=	1.3.1-linux
JAVA_HOME=	${LOCALBASE}/jdk${JDK_VERSION}
BUILD_DEPENDS=	::archivers/gtar
RUN_DEPENDS=	:jdk-linux->1.3:devel/jdk/1.3-linux

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

TAR=		${LOCALBASE}/bin/gtar

NO_BUILD=	Yes
NO_REGRESS=	Yes

CONFDIR=	${SYSCONFDIR}/tomcat
DIRS=		bin common conf server shared temp webapps work
DOCS=		LICENSE README.txt RELEASE-NOTES-4.1.txt RELEASE-PLAN-4.1.txt \
		RUNNING.txt
TOMCATDIR=	/var/tomcat
SUBST_VARS=	TOMCATDIR CONFDIR DISTNAME

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${DISTNAME}
	cd ${WRKDIST} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/${DISTNAME}
	cd ${WRKDIST} && \
		tar cf - ${DIRS} | (cd ${PREFIX}/${DISTNAME} && tar -xf -)
	@sed -e 's,y0y0y0,${TRUEPREFIX}/${DISTNAME},' \
		-e 's,y0y0y1,${SYSCONFDIR},' \
		< ${FILESDIR}/README.OpenBSD \
		> ${PREFIX}/${DISTNAME}/conf/README.OpenBSD
	@sed -e 's,y0y0y0,${TRUEPREFIX}/${DISTNAME},' \
		-e 's,y0y0y1,${JAVA_HOME},' \
		< ${FILESDIR}/tomcat.rc > ${PREFIX}/${DISTNAME}/conf/tomcat.rc
	@perl -pi -e 's,y0y0y0,${SYSCONFDIR},' \
		${PREFIX}/${DISTNAME}/bin/setclasspath.sh

.include "bsd.port.mk"
