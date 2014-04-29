# $OpenBSD: Makefile,v 1.68 2014/04/29 14:47:39 ajacoutot Exp $

COMMENT=	easy and universal access to shared and/or personnal files

V=		6.0.3
DISTNAME=	owncloud-${V}
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	www

HOMEPAGE=	http://owncloud.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# AGPLv3 (GNU Affero Public License)
# jQuery: MIT / GPLv3
# HTTP: 3 clause BSD
# MDB2: BSD-like
# User: AGPL
# XML/RPC: MIT / PHP
# Silk icons: Creative Commons Attribution
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://download.owncloud.org/community/

MODULES=	lang/php

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}/owncloud

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/owncloud
TINSTDIR=	${TRUEPREFIX}/owncloud
SUBST_VARS=	INSTDIR TINSTDIR MODPHP_BIN

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-intl \
		lang/php/${MODPHP_VERSION},-mcrypt \
		lang/php/${MODPHP_VERSION},-xmlrpc \
		lang/php/${MODPHP_VERSION},-zip

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	mv ${INSTDIR}/.htaccess ${INSTDIR}/.htaccess.dist
	find ${INSTDIR} -name '*.orig' -print0 | xargs -r0 rm
	chown -R ${BINOWN}:${BINGRP} ${INSTDIR}

.include <bsd.port.mk>
