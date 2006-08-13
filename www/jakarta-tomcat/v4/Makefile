# $OpenBSD: Makefile,v 1.21 2006/08/13 16:14:25 kurt Exp $

COMMENT=	"Java servlet 2.3 and Java server pages 1.2 server"
COMMENT-examples="example applications and documentation"

V=		4.1.31
DISTNAME=	jakarta-tomcat-${V}
PKGNAME=	${DISTNAME}p4
PKGNAME-examples=jakarta-tomcat-examples-${V}p4
CATEGORIES=	www

MASTER_SITES=	${MASTER_SITE_APACHE:=tomcat/tomcat-4/v$V/bin/} \
		http://archive.apache.org/dist/tomcat/tomcat-4/archive/v${V}/bin/

HOMEPAGE=	http://tomcat.apache.org/

MAINTAINER=	Kurt Miller <kurt@openbsd.org>

MULTI_PACKAGES=	-examples
SUBPACKAGE?=

MODULES=	java
MODJAVA_VER=	1.3+

BUILD_DEPENDS=	::archivers/gtar

RUN_DEPENDS=	::java/javaPathHelper

.if defined(PACKAGING) && ${SUBPACKAGE} == "-examples"
PREFIX=		${CATALINA_BASE}
RUN_DEPENDS=    ::www/jakarta-tomcat/v4
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
SUBST_VARS+=	DISTNAME CONFDIR CATALINA_BASE

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${DISTNAME}
	cd ${WRKDIST} && \
		tar cf - bin common server `find * -prune -type f` | \
		tar -C ${PREFIX}/${DISTNAME} -xf -
	${INSTALL_DATA_DIR} ${SAMPLEDIR}
	${INSTALL_DATA} ${WRKDIST}/conf/* ${SAMPLEDIR}
	${INSTALL_DATA_DIR} ${WRKINST}/${CATALINA_BASE}
	cd ${WRKDIST} && \
		tar cf - webapps | \
		tar -C ${WRKINST}/${CATALINA_BASE} -xf -
	find ${WRKINST} -name \*.orig -or -name \*.bat -or -name \*.exe | \
		xargs rm
	@perl -pi -e 's,%%SYSCONFDIR%%,${SYSCONFDIR},' \
		${PREFIX}/${DISTNAME}/bin/setclasspath.sh
	@perl -pi -e 's,%%PREFIX%%,${TRUEPREFIX},;s,%%DISTNAME%%,${DISTNAME},' \
		${WRKINST}/${CATALINA_BASE}/webapps/admin.xml \
		${WRKINST}/${CATALINA_BASE}/webapps/manager.xml
	@sed -e 's,%%PREFIX%%,${TRUEPREFIX},' \
		-e 's,%%DISTNAME%%,${DISTNAME},' \
		-e 's,%%SYSCONFDIR%%,${SYSCONFDIR},' \
		-e 's,%%CATALINA_BASE%%,${CATALINA_BASE},' \
		< ${FILESDIR}/README.OpenBSD \
		> ${PREFIX}/${DISTNAME}/README.OpenBSD
	@sed -e 's,%%PREFIX%%,${TRUEPREFIX},' \
		-e 's,%%DISTNAME%%,${DISTNAME},' \
		-e 's,%%CATALINA_BASE%%,${CATALINA_BASE},' \
		< ${FILESDIR}/tomcat.rc > ${SAMPLEDIR}/tomcat.rc

.include "bsd.port.mk"
