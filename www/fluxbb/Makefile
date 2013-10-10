# $OpenBSD: Makefile,v 1.13 2013/10/10 02:08:24 brad Exp $

COMMENT =	fast, light, user-friendly web forum

V=		1.5.0
DISTNAME =	fluxbb-${V}
REVISION =	2
CATEGORIES =	www

HOMEPAGE =	http://fluxbb.org/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=	http://fluxbb.org/download/releases/${V}/
EXTRACT_SUFX=	.zip

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/fluxbb
SUBST_VARS=	INSTDIR

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-mysql

do-install:
	@mv ${WRKDIST} ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}
	@chgrp www ${INSTDIR}/cache
	@chmod g+w ${INSTDIR}/cache

.include <bsd.port.mk>
