# $OpenBSD: Makefile,v 1.13 2005/02/02 19:37:30 kurt Exp $

COMMENT=	"Java servlet 2.3 and Java server pages 1.2 server"

V=		4.1.31
DISTNAME=	jakarta-tomcat-${V}
CATEGORIES=	www

MASTER_SITES=	${MASTER_SITE_APACHE:=jakarta/tomcat-4/v$V/bin/} \
		http://archive.apache.org/dist/jakarta/tomcat-4/archive/v${V}/bin/

HOMEPAGE=	http://jakarta.apache.org/

MAINTAINER=	Kurt Miller <kurt@openbsd.org>

BUILD_DEPENDS=	::archivers/gtar

JAVA_HOME=	${LOCALBASE}/jdk1.3.1-linux
RUN_DEPENDS=	:jdk*->=1.3:devel/jdk/1.3-linux

# Apache Software License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

TAR=		${LOCALBASE}/bin/gtar

NO_BUILD=	Yes
NO_REGRESS=	Yes

CONFDIR=	${SYSCONFDIR}/tomcat
CATALINA_BASE=	/var/tomcat
SAMPLEDIR=	${PREFIX}/share/examples/tomcat
SUBST_VARS+=	DISTNAME CONFDIR CATALINA_BASE SAMPLEDIR

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${DISTNAME}
	cd ${WRKDIST} && \
		tar cf - bin common server `find * -prune -type f` | \
		tar -C ${PREFIX}/${DISTNAME} -xf -
	${INSTALL_DATA_DIR} ${SAMPLEDIR}
	cd ${WRKDIST} && \
		tar cf - conf webapps | \
		tar -C ${SAMPLEDIR} -xf -
	find ${WRKINST} -name \*.orig -or -name \*.bat -or -name \*.exe | \
		xargs rm
	@perl -pi -e 's,%%SYSCONFDIR%%,${SYSCONFDIR},' \
		${PREFIX}/${DISTNAME}/bin/setclasspath.sh
	@perl -pi -e 's,%%PREFIX%%,${TRUEPREFIX},;s,%%DISTNAME%%,${DISTNAME},' \
		${SAMPLEDIR}/webapps/admin.xml ${SAMPLEDIR}/webapps/manager.xml
	@sed -e 's,%%PREFIX%%,${TRUEPREFIX},' \
		-e 's,%%DISTNAME%%,${DISTNAME},' \
		-e 's,%%SYSCONFDIR%%,${SYSCONFDIR},' \
		< ${FILESDIR}/README.OpenBSD \
		> ${PREFIX}/${DISTNAME}/README.OpenBSD
	@sed -e 's,%%PREFIX%%,${TRUEPREFIX},' \
		-e 's,%%DISTNAME%%,${DISTNAME},' \
		-e 's,%%JAVA_HOME%%,${JAVA_HOME},' \
		< ${FILESDIR}/tomcat.rc > ${SAMPLEDIR}/conf/tomcat.rc

.include "bsd.port.mk"
