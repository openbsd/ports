# $OpenBSD: Makefile,v 1.9 2012/09/10 09:16:33 jasper Exp $

COMMENT =	fast, light, user-friendly web forum

V=		1.5.0
DISTNAME =	fluxbb-${V}
REVISION =	0
CATEGORIES =	www

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

do-install:
	@mv ${WRKDIST} ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}
	@chgrp www ${INSTDIR}/cache
	@chmod g+w ${INSTDIR}/cache

.include <bsd.port.mk>
