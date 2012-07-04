# $OpenBSD: Makefile,v 1.17 2012/07/04 12:37:15 ajacoutot Exp $

COMMENT=	easy and universal access to shared and/or personnal files

DISTNAME=	owncloud-4.0.4
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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}releases/

MODULES=	lang/php

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}/owncloud

PREFIX=		/var/www
INSTDIR=	${PREFIX}/owncloud
TINSTDIR=	${TRUEPREFIX}/owncloud
SUBST_VARS=	INSTDIR TINSTDIR

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-xmlrpc \
		lang/php/${MODPHP_VERSION},-zip

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	${SUBST_CMD} -c ${FILESDIR}/owncloud.conf \
		${INSTDIR}/owncloud.conf.dist
	mv ${INSTDIR}/.htaccess ${INSTDIR}/.htaccess.dist
	find ${INSTDIR} -name '*.orig' -exec rm {} \;
	chown -R ${BINOWN}:${BINGRP} ${INSTDIR}

.include <bsd.port.mk>
