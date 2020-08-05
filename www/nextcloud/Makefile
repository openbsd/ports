# $OpenBSD: Makefile,v 1.54 2020/08/05 09:49:41 gonzalo Exp $

COMMENT=		easy and universal access to shared and/or personal files

V=			19.0.1
DISTNAME=		nextcloud-${V}
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		www

HOMEPAGE=		https://nextcloud.com/

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# AGPLv3 (GNU Affero Public License)
# jQuery: MIT / GPLv3
# HTTP: 3 clause BSD
# MDB2: BSD-like
# User: AGPL
# XML/RPC: MIT / PHP
# Silk icons: Creative Commons Attribution
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://download.nextcloud.com/server/releases/

MODULES=		lang/php

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

WRKDIST=		${WRKDIR}/nextcloud

PREFIX=			${VARBASE}/www
INSTDIR=		${PREFIX}/nextcloud
TINSTDIR=		${TRUEPREFIX}/nextcloud
VR=			${V:R}
MAJOR=			${VR:R}
SUBST_VARS=		INSTDIR TINSTDIR MODPHP_BIN VR MAJOR

RUN_DEPENDS=		lang/php/${MODPHP_VERSION},-gd \
			lang/php/${MODPHP_VERSION},-zip \
			${MODPHP_PDO_DEPENDS}

# http user authentication
RUN_DEPENDS +=		lang/php/${MODPHP_VERSION},-curl

# apps extraction
RUN_DEPENDS +=		lang/php/${MODPHP_VERSION},-bz2

# sorting of non-ASCII characters
RUN_DEPENDS +=		lang/php/${MODPHP_VERSION},-intl

# distributed caching and Transactional File Locking
RUN_DEPENDS +=		databases/pecl-redis${MODPHP_FLAVOR}

# image processing
RUN_DEPENDS +=		graphics/pecl-imagick${MODPHP_FLAVOR}

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	mv ${INSTDIR}/.htaccess ${INSTDIR}/.htaccess.dist
	find ${INSTDIR} -name '*.orig' -delete
	chown -R ${BINOWN}:${BINGRP} ${INSTDIR}

	perl -pi -e '$$. == 1 && s|^.*env php.*$$|\#!${MODPHP_BIN}|;' \
		-e 'close ARGV if eof;' ${INSTDIR}/occ
	chmod +x ${INSTDIR}/occ

	${INSTALL_DATA_DIR} ${PREFIX}/conf/modules.sample
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/apache-nextcloud.conf.dist.in \
		${PREFIX}/conf/modules.sample/apache-nextcloud.conf.dist
	${INSTALL_DATA} ${FILESDIR}/config.php.dist.in \
		${INSTDIR}/config/config.php.dist

.include <bsd.port.mk>
