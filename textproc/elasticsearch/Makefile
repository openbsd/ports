# $OpenBSD: Makefile,v 1.59 2018/12/02 20:18:38 pvk Exp $

COMMENT =		distributed RESTful search and analytics

V =			6.5.1
DISTNAME =		elasticsearch-oss-$V
PKGNAME =		elasticsearch-$V
CATEGORIES =		textproc

HOMEPAGE =		https://www.elastic.co/products/elasticsearch

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://artifacts.elastic.co/downloads/elasticsearch/

MODULES =		java
MODJAVA_VER =		1.8+
MODJAVA_JRERUN =	Yes

RUN_DEPENDS =		java/javaPathHelper \
			shells/bash

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/elasticsearch-$V

SUBST_VARS +=		BASESYSCONFDIR V VARBASE
ES_HOME =		${PREFIX}/elasticsearch/

do-install:
	${SUBST_CMD} ${WRKSRC}/bin/elasticsearch-env ${WRKSRC}/config/{elasticsearch.yml,jvm.options}
	rm ${WRKSRC}/bin/*.{bat,beforesubst,exe,orig} ${WRKSRC}/config/*.{beforesubst,orig}
	sed -i 's,#!/bin/bash,#!/usr/bin/env bash,' ${WRKSRC}/bin/*
	${INSTALL_DATA_DIR} ${ES_HOME}/{bin,lib,modules,plugins}/ \
		${PREFIX}/share/{doc,examples}/elasticsearch/
	${INSTALL_SCRIPT} ${WRKSRC}/bin/* ${ES_HOME}/bin/
	${INSTALL_DATA} ${WRKSRC}/config/* ${PREFIX}/share/examples/elasticsearch/
	${INSTALL_DATA} ${WRKSRC}/lib/*.jar ${ES_HOME}/lib/
	cp -R ${WRKSRC}/modules ${ES_HOME}/
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,NOTICE}.txt \
		${PREFIX}/share/doc/elasticsearch/
	${INSTALL_DATA} ${WRKSRC}/README.textile ${PREFIX}/share/doc/elasticsearch/

.include <bsd.port.mk>
