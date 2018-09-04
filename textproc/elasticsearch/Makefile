# $OpenBSD: Makefile,v 1.55 2018/09/04 12:46:23 espie Exp $

COMMENT =		distributed RESTful search and analytics

V =			6.2.4
DISTNAME =		elasticsearch-$V
CATEGORIES =		textproc
REVISION =		0

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

SUBST_VARS +=		BASESYSCONFDIR V
ES_HOME =		${PREFIX}/elasticsearch/

do-install:
	${SUBST_CMD} ${WRKSRC}/bin/elasticsearch-env
	rm ${WRKSRC}/bin/*.{bat,beforesubst,exe,orig} ${WRKSRC}/config/*.orig
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
