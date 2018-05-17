# $OpenBSD: Makefile,v 1.1.1.1 2018/05/17 11:08:38 pvk Exp $

COMMENT =		extensions for Elastic Stack

DISTNAME =		x-pack-6.2.4
CATEGORIES =		sysutils

HOMEPAGE =		https://www.elastic.co/products/x-pack

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# Elastic license
# https://github.com/elastic/elasticsearch/blob/master/licenses/ELASTIC-LICENSE.txt
PERMIT_PACKAGE_CDROM =	Elastic license
PERMIT_PACKAGE_FTP =	Elastic license
PERMIT_DISTFILES_FTP =	Elastic license

MASTER_SITES =		https://artifacts.elastic.co/downloads/packs/x-pack/
EXTRACT_SUFX =		.zip

BUILD_DEPENDS =		archivers/zip
NO_TEST =		Yes

PKG_ARCH =		*
WRKDIST =		${WRKDIR}

do-build:
	rm ${WRKSRC}/elasticsearch/{core,security,watcher}/bin/*.bat
	rm -r ${WRKSRC}/elasticsearch/ml/platform/*
	rm ${WRKSRC}/kibana/x-pack/index.js.orig
	rm -r ${WRKSRC}/kibana/x-pack/plugins/reporting/{.chromium,.phantom}
	sed -i 's,#!/bin/bash,#!/usr/bin/env bash,' \
		${WRKSRC}/elasticsearch/{core,security,watcher}/bin/*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/x-pack/
	@cd ${WRKSRC} && zip --move -qr \
		${PREFIX}/share/x-pack/${DISTNAME}${EXTRACT_SUFX} \
		elasticsearch kibana logstash

.include <bsd.port.mk>
