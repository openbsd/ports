# $OpenBSD: Makefile,v 1.9 2006/08/13 16:14:25 kurt Exp $

COMMENT=	"Java servlet 2.4 and Java server pages 2.0 server"
COMMENT-examples="example applications and documentation"

V=		5.0.28
DISTNAME=	jakarta-tomcat-${V}
PKGNAME=	${DISTNAME}p5
PKGNAME-examples=jakarta-tomcat-examples-${V}p5
CATEGORIES=	www

MASTER_SITES=	${MASTER_SITE_APACHE:=tomcat/tomcat-5/v$V/bin/} \
		http://archive.apache.org/dist/tomcat/tomcat-5/archive/v${V}/bin/

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
RUN_DEPENDS=    ::www/jakarta-tomcat/v5
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
	${INSTALL_DATA} `find ${WRKDIST}/conf/* -prune -type f` ${SAMPLEDIR}
	${INSTALL_DATA_DIR} ${WRKINST}/${CATALINA_BASE}
	cd ${WRKDIST} && \
		tar cf - webapps | \
		tar -C ${WRKINST}/${CATALINA_BASE} -xf -
	${INSTALL_DATA_DIR} ${WRKINST}/${CONFDIR}/Catalina/localhost
	${INSTALL_DATA} ${WRKDIST}/conf/Catalina/localhost/* \
		${WRKINST}/${CONFDIR}/Catalina/localhost
	find ${WRKINST} -name \*.orig -or -name \*.bat -or -name \*.exe | \
		xargs rm
	@perl -pi -e 's,%%SYSCONFDIR%%,${SYSCONFDIR},' \
		${PREFIX}/${DISTNAME}/bin/setclasspath.sh
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
