# $OpenBSD: Makefile,v 1.12 2013/08/12 04:11:21 robert Exp $

COMMENT =	web-based bug tracking system

DISTNAME =	flyspray-0.9.9.7
REVISION =	1
CATEGORIES =	www devel

HOMEPAGE =	http://flyspray.org/

MAINTAINER =	Chris Kuethe <ckuethe@openbsd.org>

# GPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.zip

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/flyspray
SUBST_VARS=	INSTDIR

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-mysql

do-extract:
	@mkdir -p ${WRKDIST}
	unzip -d ${WRKDIST} ${FULLDISTDIR}/${EXTRACT_ONLY}

do-install:
	@mv ${WRKDIST} ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}
	@mkdir -p ${INSTDIR}/cache ${INSTDIR}/attachments
	@chgrp www ${INSTDIR}/cache ${INSTDIR}/attachments
	@chmod g+w ${INSTDIR}/cache ${INSTDIR}/attachments

.include <bsd.port.mk>
