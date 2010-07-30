# $OpenBSD: horde.port.mk,v 1.1.1.1 2010/07/30 11:27:06 sthen Exp $

CATEGORIES +=	www www/horde

HORDE_MODULE ?=	${DISTNAME:C/-h3-.*//}
MASTER_SITES ?=	${MASTER_SITE_HORDE:=${HORDE_MODULE}/}

PKG_ARCH ?=	*

PREFIX ?=	/var/www
INSTDIR ?=	horde/${HORDE_MODULE}

.if !${HORDE_MODULE:Mhorde}
SUBST_VARS +=	HORDE_MODULE HORDE_NAME INSTDIR
HORDE_RUNDEP =	:horde->=3.0:devel/horde
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${INSTDIR}
	cp -R ${WRKDIST}/* ${PREFIX}/${INSTDIR}
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/${INSTDIR}
	chown -R ${BINOWN}:www ${PREFIX}/${INSTDIR}/config
	find ${PREFIX}/${INSTDIR} -name \*.orig -print0 | xargs -0 -r rm

