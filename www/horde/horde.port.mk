# $OpenBSD: horde.port.mk,v 1.4 2010/07/30 22:10:54 sthen Exp $

CATEGORIES +=	www www/horde

HORDE_MODULE ?=	${DISTNAME:C/-h3-.*//}

HORDE_SITES ?= \
	http://ftp.se.horde.org/ \
	http://ftp.horde.org/pub/ \
	ftp://ftp.horde.org/pub/ \
	ftp://ftp.de.horde.org/mirrors/ftp.de.horde.org/pub/ \
	ftp://ftp.se.horde.org/mirror/horde/pub/ \
	ftp://ftp.tw.horde.org/pub/ \
	ftp://ftp.us.horde.org/pub/software/horde/

PKG_ARCH ?=	*

PREFIX ?=	/var/www
INSTDIR ?=	horde/${HORDE_MODULE}
SUBST_VARS +=	INSTDIR

.if ${HORDE_MODULE}
SUBST_VARS +=	HORDE_MODULE HORDE_NAME
RUN_DEPENDS +=	:horde->=3.0:www/horde/horde
MASTER_SITES ?=	${HORDE_SITES:=${HORDE_MODULE}/}
HOMEPAGE ?=	http://www.horde.org/${HORDE_MODULE}/
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${INSTDIR}
	cp -R ${WRKDIST}/* ${PREFIX}/${INSTDIR}
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/${INSTDIR}
	chown -R ${BINOWN}:www ${PREFIX}/${INSTDIR}/config
	find ${PREFIX}/${INSTDIR} -name \*.orig -print0 | xargs -0 -r rm

