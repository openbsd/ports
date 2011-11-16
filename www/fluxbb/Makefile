# $OpenBSD: Makefile,v 1.7 2011/11/16 15:56:37 robert Exp $

COMMENT =	fast, light, user-friendly web forum

V=		1.4.2
DISTNAME =	fluxbb-${V}
CATEGORIES =	www
REVISION=	4

HOMEPAGE =	http://fluxbb.org/

MAINTAINER =	Chris Kuethe <ckuethe@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES=	http://fluxbb.org/download/releases/${V}/
EXTRACT_SUFX=	.zip

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/fluxbb
SUBST_VARS=	INSTDIR

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-mysql

do-extract:
	@mkdir -p ${WRKDIST}
	unzip -d ${WRKDIST} ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

do-install:
	@mv ${WRKDIST} ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}
	@chgrp www ${INSTDIR}/cache
	@chmod g+w ${INSTDIR}/cache

.include <bsd.port.mk>
