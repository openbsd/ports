# $OpenBSD: Makefile,v 1.16 2019/07/12 20:49:51 sthen Exp $

COMMENT=		job scheduler and runbook automation

V=			2.6.11
DISTNAME=		rundeck-launcher-${V}
PKGNAME=		rundeck-${V}
REVISION=		6

CATEGORIES=		sysutils

HOMEPAGE=		http://rundeck.org/

# Apache 2.0
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://download.rundeck.org/jar/
EXTRACT_SUFX=		.jar
EXTRACT_ONLY=		# empty

MODULES=		java
MODJAVA_VER=		1.8+

RUN_DEPENDS=		java/javaPathHelper

NO_TEST=		Yes
PKG_ARCH=		*

WRKDIST=		${WRKDIR}/rundeck-${V}

PREFIX =		${VARBASE}
RDECK_BASE =		${PREFIX}/rundeck
SUBST_VARS +=		RDECK_BASE

CONFIG_FILES =		server/exp/webapp/WEB-INF/classes/log4j.properties \
			server/config/rundeck-config.properties \
			server/config/jaas-loginmodule.conf
TOOLS =			dispatch rd-acl rd-jobs rd-project rd-queue \
			rd-setup run

do-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKSRC} && \
		${JAVA_HOME}/bin/java -jar ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
		--installonly -b .

do-build:
	sed -i -e "s,^grails.serverURL=.*,grails.serverURL=http://localhost:4440," \
		-e "s,^rdeck.base=.*,rdeck.base=${PREFIX}/rundeck," \
		${WRKSRC}/server/config/rundeck-config.properties
.for c in ${CONFIG_FILES}
	sed -i "s,$$(readlink -f ${WRKDIST}),${PREFIX}/rundeck,g" ${WRKSRC}/$c
.endfor
.for t in ${TOOLS}
	sed -i 's,^#!/bin/bash,#!/bin/sh,' ${WRKSRC}/tools/bin/$t
.endfor

# First we install the modified configuration files and scripts. These files
# are not overwritten when the jar unpacks itself into ${RDECK_BASE}
do-install:
	${INSTALL_DATA_DIR} ${RDECK_BASE}/{etc/,tools/bin}
.for c in ${CONFIG_FILES}
	${INSTALL_DATA_DIR} ${RDECK_BASE}/$$(dirname ${c})
	${INSTALL_DATA} ${WRKSRC}/$c ${RDECK_BASE}/$c
.endfor
.for t in ${TOOLS}
	${INSTALL_SCRIPT} ${WRKSRC}/tools/bin/$t ${RDECK_BASE}/tools/bin/
.endfor
	for f in ${FILESDIR}/*; do \
		if [ -f $$f ]; then \
			${SUBST_CMD} -m ${SHAREMODE} -c $$f \
				${RDECK_BASE}/etc/$$(basename $$f).dist; \
		fi; \
	done
	${INSTALL_DATA} ${DISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
		${RDECK_BASE}/rundeck-launcher.jar

.include <bsd.port.mk>
