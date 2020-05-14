# $OpenBSD: Makefile,v 1.73 2020/05/14 21:38:18 pvk Exp $

COMMENT =		distributed RESTful search and analytics

V =			7.7.0
DISTNAME =		elasticsearch-oss-$V-darwin-x86_64
PKGNAME =		elasticsearch-$V
CATEGORIES =		textproc

HOMEPAGE =		https://www.elastic.co/products/elasticsearch

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# Apache2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://artifacts.elastic.co/downloads/elasticsearch/

MODULES =		java
MODJAVA_VER =		11

RUN_DEPENDS =		java/javaPathHelper \
			shells/bash

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/elasticsearch-$V

SUBST_VARS +=		BASESYSCONFDIR V VARBASE
ES_HOME =		${PREFIX}/elasticsearch/

do-install:
	${SUBST_CMD} ${WRKSRC}/bin/elasticsearch-env \
		${WRKSRC}/config/{elasticsearch.yml,jvm.options}
	rm ${WRKSRC}/bin/*.{beforesubst,orig} \
		${WRKSRC}/config/*.{beforesubst,orig}
	sed -i 's,#!/bin/bash,#!/usr/bin/env bash,' ${WRKSRC}/bin/*
	${INSTALL_DATA_DIR} ${ES_HOME}/bin \
		${PREFIX}/share/{doc,examples}/elasticsearch/
	${INSTALL_SCRIPT} ${WRKSRC}/bin/* ${ES_HOME}/bin/
	${INSTALL_DATA} ${WRKSRC}/config/*.{options,properties,yml} \
		${PREFIX}/share/examples/elasticsearch/
	cp -R ${WRKSRC}/{lib,modules,plugins} ${ES_HOME}/
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,NOTICE}.txt \
		${PREFIX}/share/doc/elasticsearch/
	${INSTALL_DATA} ${WRKSRC}/README.asciidoc \
		${PREFIX}/share/doc/elasticsearch/

.include <bsd.port.mk>
