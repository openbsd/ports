# $OpenBSD: Makefile,v 1.2 2006/11/01 20:47:41 kurt Exp $

COMMENT=	"Java servlet 2.3 and Java server pages 1.2 server"
COMMENT-admin	="administration web application"
COMMENT-examples="example applications and documentation"

V=		4.1.34
DISTNAME=	apache-tomcat-${V}
PKGNAME=	tomcat-${V}p0
PKGNAME-admin	=tomcat-admin-${V}p0
PKGNAME-examples=tomcat-examples-${V}p0
CATEGORIES=	www

MASTER_SITES=	${MASTER_SITE_APACHE:=tomcat/tomcat-4/v$V/bin/} \
		http://archive.apache.org/dist/tomcat/tomcat-4/archive/v${V}/bin/

HOMEPAGE=	http://tomcat.apache.org/

MAINTAINER=	Kurt Miller <kurt@openbsd.org>

MULTI_PACKAGES=	-examples -admin
SUBPACKAGE?=

MODULES=	java
MODJAVA_VER=	1.3+

BUILD_DEPENDS=	::archivers/gtar

RUN_DEPENDS=	::java/javaPathHelper

.if defined(PACKAGING)
.  if ${SUBPACKAGE} == "-admin"
RUN_DEPENDS=	::www/tomcat/v4
.  elif ${SUBPACKAGE} == "-examples"
PREFIX=		${CATALINA_BASE}
RUN_DEPENDS=    ::www/tomcat/v4,-admin
.  endif
.endif

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
SUBST_VARS+=	CONFDIR CATALINA_BASE

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/tomcat
	cd ${WRKDIST} && \
		tar cf - bin common server `find * -prune -type f` | \
		tar -C ${PREFIX}/tomcat -xf -
	${INSTALL_DATA_DIR} ${SAMPLEDIR}
	${INSTALL_DATA} ${WRKDIST}/conf/* ${SAMPLEDIR}
	${INSTALL_DATA} ${WRKDIST}/webapps/*.xml ${SAMPLEDIR}
	${INSTALL_DATA_DIR} ${WRKINST}/${CATALINA_BASE}
	cd ${WRKDIST} && \
		tar cf - webapps | \
		tar -C ${WRKINST}/${CATALINA_BASE} -xf -
	find ${WRKINST} -name \*.orig -or -name \*.bat -or -name \*.exe | \
		xargs rm
	@perl -pi -e 's,%%SYSCONFDIR%%,${SYSCONFDIR},' \
		${PREFIX}/tomcat/bin/setclasspath.sh
	@perl -pi -e 's,%%PREFIX%%,${TRUEPREFIX},' \
		${WRKINST}/${CATALINA_BASE}/webapps/admin.xml \
		${WRKINST}/${CATALINA_BASE}/webapps/manager.xml
	@sed -e 's,%%PREFIX%%,${TRUEPREFIX},' \
		-e 's,%%SYSCONFDIR%%,${SYSCONFDIR},' \
		-e 's,%%CATALINA_BASE%%,${CATALINA_BASE},' \
		< ${FILESDIR}/README.OpenBSD \
		> ${PREFIX}/tomcat/README.OpenBSD
	@sed -e 's,%%PREFIX%%,${TRUEPREFIX},' \
		-e 's,%%CATALINA_BASE%%,${CATALINA_BASE},' \
		< ${FILESDIR}/tomcat.rc > ${SAMPLEDIR}/tomcat.rc

.include "bsd.port.mk"
