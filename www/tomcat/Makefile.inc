# $OpenBSD: Makefile.inc,v 1.6 2014/05/07 15:42:16 kurt Exp $

COMMENT-main ?=	Java servlet and Java server pages server
COMMENT-examples =example applications and full documentation

VER =		${MAJ_VER}.${MIN_VER}.${MICRO_VER}
DISTNAME =	apache-tomcat-${VER}
PKGNAME-main =	tomcat-${VER}
PKGNAME-examples =tomcat-examples-${VER}
REVISION =	0

CATEGORIES =	www

DISTFILES =	${DISTNAME}.tar.gz \
		${DISTNAME}-fulldocs.tar.gz

MASTER_SITES =	${MASTER_SITE_APACHE:=tomcat/tomcat-${MAJ_VER}/v${VER}/bin/} \
		http://archive.apache.org/dist/tomcat/tomcat-${MAJ_VER}/archive/v${VER}/bin/

HOMEPAGE =	http://tomcat.apache.org/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

MULTI_PACKAGES = -main -examples

MODULES =	java
MODJAVA_VER =	1.6+
MODJAVA_JRERUN =Yes

RUN_DEPENDS =	java/javaPathHelper

RUN_DEPENDS-examples ?=www/tomcat/v${MAJ_VER},-main>=${MAJ_VER}

PREFIX-examples =${CATALINA_BASE}

# Apache Software License 2.0
PERMIT_PACKAGE_CDROM =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes

CONFDIR =	${SYSCONFDIR}/tomcat
CATALINA_BASE =	/var/tomcat
SAMPLEDIR =	${PREFIX}/share/examples/tomcat
SUBST_VARS +=	CONFDIR CATALINA_BASE

post-extract:
	@rm -rf ${WRKDIST}/webapps/docs
	mv ${WRKDIR}/tomcat-${MAJ_VER}.${MIN_VER}-doc ${WRKDIST}/webapps/docs

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
	${SUBST_CMD} ${SAMPLEDIR}/server.xml
	${INSTALL_DATA} ${WRKDIST}/webapps/host-manager/manager.xml \
		${SAMPLEDIR}
	${INSTALL_DATA} ${WRKDIST}/webapps/host-manager/manager.xml \
		${SAMPLEDIR}/host-manager.xml
	@perl -pi -e 's/manager/host-manager/' ${SAMPLEDIR}/host-manager.xml
	cd ${WRKDIST}/webapps && \
		tar cf - ROOT docs examples | \
		tar -C ${WRKINST}/${CATALINA_BASE}/webapps -xf -
	${INSTALL_DATA_DIR} ${WRKINST}/${CONFDIR}/Catalina/localhost
	${INSTALL_DATA} ${WRKDIST}/webapps/host-manager/manager.xml \
		${WRKINST}/${CONFDIR}/Catalina/localhost
	${INSTALL_DATA} ${WRKDIST}/webapps/host-manager/manager.xml \
		${WRKINST}/${CONFDIR}/Catalina/localhost/host-manager.xml
	@perl -pi -e 's/manager/host-manager/' \
		${WRKINST}/${CONFDIR}/Catalina/localhost/host-manager.xml
	find ${WRKINST} \
		-name \*.beforesubst -or \
		-name \*.orig -or \
		-name \*.bat -or \
		-name \*.exe -or \
		-name \*.dll \
		| xargs rm
