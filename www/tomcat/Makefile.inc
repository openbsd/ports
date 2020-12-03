# $OpenBSD: Makefile.inc,v 1.15 2020/12/03 20:58:53 sthen Exp $

COMMENT-main ?=	Java servlet and Java server pages server
COMMENT-examples =example applications and full documentation

VER =		${MAJ_VER}.${MIN_VER}.${MICRO_VER}
DISTNAME =	apache-tomcat-${VER}
PKGNAME-main =	tomcat-${VER}
PKGNAME-examples =tomcat-examples-${VER}

CATEGORIES =	www

DISTFILES =	${DISTNAME}.tar.gz \
		${DISTNAME}-fulldocs.tar.gz

MASTER_SITES =	${MASTER_SITE_APACHE:=tomcat/tomcat-${MAJ_VER}/v${VER}/bin/} \
		http://archive.apache.org/dist/tomcat/tomcat-${MAJ_VER}/archive/v${VER}/bin/

HOMEPAGE =	http://tomcat.apache.org/

MULTI_PACKAGES = -main -examples

MODULES =	java
# some issues seen with jdk/11; at least tomcat + lang/lucee results in 404s
# when things work as-is with 1.8
MODJAVA_VER ?=	1.8

RUN_DEPENDS =	java/javaPathHelper

RUN_DEPENDS-examples ?=www/tomcat/v${MAJ_VER},-main>=${MAJ_VER}

PREFIX-examples =${CATALINA_BASE}

# Apache Software License 2.0
PERMIT_PACKAGE =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes

CONFDIR =	${SYSCONFDIR}/tomcat
CATALINA_BASE =	/var/tomcat
SAMPLEDIR =	${PREFIX}/share/examples/tomcat
SUBST_VARS +=	CONFDIR CATALINA_BASE
# conf/ is not world-readable
FIX_EXTRACT_PERMISSIONS = Yes

post-extract:
	@rm -rf ${WRKDIST}/webapps/docs
	mv ${WRKDIR}/tomcat-${MAJ_VER}.${MIN_VER}-doc ${WRKDIST}/webapps/docs

.if ${MAJ_VER} == 7
MGR_XML=	${WRKDIST}/webapps/host-manager/manager.xml
.else
MGR_XML=	${WRKDIST}/webapps/host-manager/WEB-INF/manager.xml
.endif

do-install:
	${INSTALL_DATA_DIR} ${SAMPLEDIR} ${PREFIX}/tomcat{,/webapps} \
		${WRKINST}/${CATALINA_BASE}{,/webapps}

	# -main
	cd ${WRKDIST} && tar cf - bin lib `find * -prune -type f` | \
		tar -C ${PREFIX}/tomcat -xf -
	cd ${WRKDIST}/webapps && tar cf - host-manager manager | \
		tar -C ${PREFIX}/tomcat/webapps -xf -
	${INSTALL_DATA} `find ${WRKDIST}/conf/* -prune -type f` ${SAMPLEDIR}
	${INSTALL_DATA} ${MGR_XML} ${SAMPLEDIR}/
	${INSTALL_DATA} ${MGR_XML} ${SAMPLEDIR}/host-manager.xml
	perl -pi -e 's/manager/host-manager/' ${SAMPLEDIR}/host-manager.xml
	chmod 0555 ${PREFIX}/tomcat/bin/*.sh
	${SUBST_CMD} ${SAMPLEDIR}/server.xml

	# -examples
	cd ${WRKDIST}/webapps && tar cf - ROOT docs examples | \
		tar -C ${WRKINST}/${CATALINA_BASE}/webapps -xf -
	# included directly in PLIST-examples via @cwd
	${INSTALL_DATA_DIR} ${WRKINST}/${CONFDIR}/Catalina/localhost
	${INSTALL_DATA} ${MGR_XML} ${WRKINST}/${CONFDIR}/Catalina/localhost
	${INSTALL_DATA} ${MGR_XML} \
		${WRKINST}/${CONFDIR}/Catalina/localhost/host-manager.xml
	perl -pi -e 's/manager/host-manager/' \
		${WRKINST}/${CONFDIR}/Catalina/localhost/host-manager.xml

	find ${WRKINST} \( \
		-name '*.beforesubst' -or \
		-name '*.orig' -or \
		-name '*.bat' -or \
		-name '*.exe' -or \
		-name '*.dll' \) \
		-delete

