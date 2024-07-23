COMMENT =	distributed and RESTful search engine

V =		2.15.0
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
MODJAVA_VER =	11

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
	find ${WRKSRC}/{bin,performance-analyzer-rca/bin,plugins/opensearch-security/tools} \
		 -type f -exec sed -i 's,#!/bin/bash,#!/usr/bin/env bash,' {} +
	find ${WRKSRC}/{bin,performance-analyzer-rca/bin,plugins/opensearch-security/tools} \
		 -type f -exec chmod 755 {} +

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/opensearch/ \
		${PREFIX}/opensearch/extensions \
		${PREFIX}/share/{doc,examples}/opensearch/
	cp -R ${WRKSRC}/config/* ${PREFIX}/share/examples/opensearch/
	cp -R ${WRKSRC}/{bin,lib,modules,performance-analyzer-rca,plugins} \
		${PREFIX}/opensearch/
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,NOTICE}.txt ${WRKSRC}/README.md \
		${PREFIX}/share/doc/opensearch/

.include <bsd.port.mk>
