# $OpenBSD: Makefile,v 1.3 2009/04/26 09:38:25 sthen Exp $

COMMENT-main=	Java servlet 2.5 and Java server pages 2.1 server
COMMENT-examples=example applications and full documentation

V=		6.0.18
DISTNAME=	apache-tomcat-${V}
PKGNAME=	tomcat-${V}
PKGNAME-main=	tomcat-${V}p1
PKGNAME-examples=tomcat-examples-${V}
CATEGORIES=	www

DISTFILES=	${DISTNAME}.tar.gz \
		${DISTNAME}-fulldocs.tar.gz

MASTER_SITES=	${MASTER_SITE_APACHE:=tomcat/tomcat-6/v$V/bin/} \
		http://archive.apache.org/dist/tomcat/tomcat-6/archive/v${V}/bin/

HOMEPAGE=	http://tomcat.apache.org/

MAINTAINER=	Kurt Miller <kurt@openbsd.org>

MULTI_PACKAGES=	-main -examples

MODULES=	java
MODJAVA_VER=	1.5+
MODJAVA_JRERUN=	Yes

BUILD_DEPENDS=	::archivers/gtar

RUN_DEPENDS=	::java/javaPathHelper

RUN_DEPENDS-examples=	:tomcat-6.*:www/tomcat/v6,-main
PREFIX-examples=	${CATALINA_BASE}

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

post-extract:
	rm -rf ${WRKDIST}/webapps/docs
	mv ${WRKDIR}/tomcat-6.0-doc ${WRKDIST}/webapps/docs

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/tomcat \
		${PREFIX}/tomcat/webapps \
		${SAMPLEDIR} \
		${WRKINST}/${CATALINA_BASE} \
		${WRKINST}/${CATALINA_BASE}/webapps
	cd ${WRKDIST} && \
		tar cf - bin lib `find * -prune -type f` | \
		tar -C ${PREFIX}/tomcat -xf -
	cd ${WRKDIST}/webapps && \
		tar cf - host-manager manager | \
		tar -C ${PREFIX}/tomcat/webapps -xf -
	${INSTALL_DATA} `find ${WRKDIST}/conf/* -prune -type f` ${SAMPLEDIR}
	${INSTALL_DATA} ${WRKDIST}/webapps/host-manager/manager.xml \
		${SAMPLEDIR}
	cd ${WRKDIST}/webapps && \
		tar cf - ROOT docs examples | \
		tar -C ${WRKINST}/${CATALINA_BASE}/webapps -xf -
	${INSTALL_DATA_DIR} ${WRKINST}/${CONFDIR}/Catalina/localhost
	${INSTALL_DATA} ${WRKDIST}/webapps/host-manager/manager.xml \
		${WRKINST}/${CONFDIR}/Catalina/localhost
	find ${WRKINST} -name \*.orig -or -name \*.bat -or -name \*.exe | \
		xargs rm
	@perl -pi -e 's,%%SYSCONFDIR%%,${SYSCONFDIR},' \
		${PREFIX}/tomcat/bin/setclasspath.sh
	@sed -e 's,%%PREFIX%%,${TRUEPREFIX},' \
		-e 's,%%SYSCONFDIR%%,${SYSCONFDIR},' \
		-e 's,%%CATALINA_BASE%%,${CATALINA_BASE},' \
		< ${FILESDIR}/README.OpenBSD \
		> ${PREFIX}/tomcat/README.OpenBSD
	@sed -e 's,%%PREFIX%%,${TRUEPREFIX},' \
		-e 's,%%CATALINA_BASE%%,${CATALINA_BASE},' \
		< ${FILESDIR}/tomcat.rc > ${SAMPLEDIR}/tomcat.rc

.include <bsd.port.mk>
