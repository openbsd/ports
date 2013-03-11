# $OpenBSD: Makefile,v 1.10 2013/03/11 11:44:42 espie Exp $

COMMENT =	fast, light, user-friendly web forum

V=		1.5.0
DISTNAME =	fluxbb-${V}
REVISION =	0
CATEGORIES =	www

HOMEPAGE =	http://fluxbb.org/

MAINTAINER =	Chris Kuethe <ckuethe@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=	http://fluxbb.org/download/releases/${V}/
EXTRACT_SUFX=	.zip

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
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
