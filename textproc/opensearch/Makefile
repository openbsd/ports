COMMENT =	distributed and RESTful search engine

V =		3.4.0
DISTNAME =	opensearch-$V-linux-x64
PKGNAME =	opensearch-$V

CATEGORIES =	textproc devel

HOMEPAGE =	https://www.opensearch.org/

MAINTAINER =	Omar Polo <op@openbsd.org>,\
		Pavel Korovin <pvk@openbsd.org>

SITES =		https://artifacts.opensearch.org/releases/bundle/opensearch/$V/

FIX_EXTRACT_PERMISSIONS = Yes

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =	java
MODJAVA_VER =	21

RUN_DEPENDS =	java/javaPathHelper \
		java/jna \
		shells/bash

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/opensearch-$V

SUBST_VARS +=	BASESYSCONFDIR JAVA_HOME V VARBASE
SUBST_TARGETS =	${WRKSRC}/bin/opensearch-env \
		${WRKSRC}/config/{opensearch.yml,jvm.options} \
		${WRKSRC}/plugins/opensearch-security/tools/install_demo_configuration.sh

do-build:
	rm -rf ${WRKSRC}/lib/jna-*.jar
	find ${WRKSRC} -name '*.bat' -delete
	${SUBST_CMD} ${SUBST_TARGETS}
	rm -f ${WRKSRC}/{bin,config,plugins/opensearch-security/tools}/*{.beforesubst,${PATCHORIG}}
	find ${WRKSRC}/{bin,plugins/opensearch-security/tools} \
		 -type f -exec sed -i 's,#!/bin/bash,#!/usr/bin/env bash,' {} +
	find ${WRKSRC}/{bin,plugins/opensearch-security/tools} \
		 -type f -exec chmod 755 {} +
	mv ${WRKSRC}/config/opensearch-security-analytics ${WRKSRC}/

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/opensearch/ \
		${PREFIX}/share/{doc,examples}/opensearch/
	cp -R ${WRKSRC}/config/* ${PREFIX}/share/examples/opensearch/
	cp -R ${WRKSRC}/{agent,bin,lib,manifest.yml,modules,opensearch-security-analytics,plugins} \
		${PREFIX}/opensearch/
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,NOTICE}.txt ${WRKSRC}/README.md \
		${PREFIX}/share/doc/opensearch/

.include <bsd.port.mk>
