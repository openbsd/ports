COMMENT=		job scheduler and runbook automation

V=			5.18.0
DISTNAME=		rundeck-${V}-20251216
PKGNAME=		rundeck-${V}

CATEGORIES=		sysutils

HOMEPAGE=		https://www.rundeck.org/

# Apache 2.0
PERMIT_PACKAGE=	Yes

SITES=			https://packagecloud.io/pagerduty/rundeck/packages/java/org.rundeck/${DISTNAME}.war/artifacts/${DISTNAME}.war/download?/
EXTRACT_SUFX=		.war
EXTRACT_ONLY=		# empty

MODULES=		java
MODJAVA_VER=		11

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

WRKDIST=		${WRKDIR}/rundeck-${V}

PREFIX =		${VARBASE}
RDECK_BASE =		${PREFIX}/rundeck
SUBST_VARS +=		JAVA_HOME

ETC_FILES = 		admin.aclpolicy \
			framework.properties \
			profile \
			project.properties \
			system-job_reader.aclpolicy_template \
			system-job_runner.aclpolicy_template \
			system-job_viewer.aclpolicy_template \
			system-job_writer.aclpolicy_template \
			system-project_admin.aclpolicy_template

do-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKSRC} && \
		${JAVA_HOME}/bin/java -jar ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
		--installonly -b .

do-install:
	${INSTALL_DATA_DIR} ${RDECK_BASE}/{etc,.ssh}
	${INSTALL_DATA} ${DISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
		${RDECK_BASE}/rundeck.war
	cd ${WRKSRC} && \
		find . -type d -not -name sbin -exec \
			${INSTALL_DATA_DIR} ${RDECK_BASE}/{} \;
	cd ${WRKSRC}/server/config && \
		find . -type f -not -name \*.orig.port -exec \
			${SUBST_DATA} {} ${RDECK_BASE}/server/config/{}.dist \;
	cd ${FILESDIR} && \
		for f in ${ETC_FILES} ; do \
			${SUBST_DATA} $$f ${RDECK_BASE}/etc/$$f.dist ; done

.include <bsd.port.mk>
