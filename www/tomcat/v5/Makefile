# $OpenBSD: Makefile,v 1.23 2011/10/17 11:11:46 dcoppa Exp $

COMMENT-main=	Java servlet 2.4 and Java server pages 2.0 server
COMMENT-admin=	administration web application
COMMENT-examples=example applications and documentation

V=		5.5.34
DISTNAME=	apache-tomcat-${V}
PKGNAME=	tomcat-${V}
PKGNAME-main=	tomcat-${V}
PKGNAME-admin=	tomcat-admin-${V}
PKGNAME-examples=tomcat-examples-${V}
REVISION-main=	0
CATEGORIES=	www

DISTFILES=	${DISTNAME}.tar.gz \
		${DISTNAME}-admin.tar.gz \
		${DISTNAME}-fulldocs.tar.gz

MASTER_SITES=	${MASTER_SITE_APACHE:=tomcat/tomcat-5/v${V}/bin/} \
		http://archive.apache.org/dist/tomcat/tomcat-5/archive/v${V}/bin/

HOMEPAGE=	http://tomcat.apache.org/

MULTI_PACKAGES=	-main -admin -examples

MODULES=	java
MODJAVA_VER=	1.5+
MODJAVA_JRERUN=	Yes

BUILD_DEPENDS=	archivers/gtar

RUN_DEPENDS=	java/javaPathHelper

RUN_DEPENDS-admin=	tomcat->=5,<6:www/tomcat/v5,-main
PREFIX-examples=	${CATALINA_BASE}
RUN_DEPENDS-examples=	tomcat-admin->=5,<6:www/tomcat/v5,-admin

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
	@rm -rf ${WRKDIST}/webapps/tomcat-docs
	mv ${WRKDIR}/tomcat-5.5-doc ${WRKDIST}/webapps/tomcat-docs

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/tomcat
	cd ${WRKDIST} && \
		tar cf - bin common server `find * -prune -type f` | \
		tar -C ${PREFIX}/tomcat -xf -
	@rm ${PREFIX}/tomcat/server/webapps/host-manager/host-manager.xml
	@rm ${PREFIX}/tomcat/server/webapps/manager/manager.xml
	${INSTALL_DATA_DIR} ${SAMPLEDIR}
	${INSTALL_DATA} `find ${WRKDIST}/conf/* -prune -type f` ${SAMPLEDIR}
	${SUBST_CMD} ${SAMPLEDIR}/server.xml
	${INSTALL_DATA} ${WRKDIST}/conf/Catalina/localhost/* \
		${SAMPLEDIR}
	${INSTALL_DATA_DIR} ${WRKINST}/${CATALINA_BASE}
	cd ${WRKDIST} && \
		tar cf - webapps | \
		tar -C ${WRKINST}/${CATALINA_BASE} -xf -
	${INSTALL_DATA_DIR} ${WRKINST}/${CONFDIR}/Catalina/localhost
	${INSTALL_DATA} ${WRKDIST}/conf/Catalina/localhost/* \
		${WRKINST}/${CONFDIR}/Catalina/localhost
	@rm -r ${PREFIX}/tomcat/bin/[xi]64
	find ${WRKINST} \
		-name \*.beforesubst -or \
		-name \*.orig -or \
		-name \*.bat -or \
		-name \*.exe -or \
		-name \*.dll \
		| xargs rm

.include <bsd.port.mk>
