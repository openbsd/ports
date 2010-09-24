# $OpenBSD: Makefile,v 1.2 2010/09/24 01:08:10 ckuethe Exp $

COMMENT =	web-based bug tracking system

DISTNAME =	flyspray-0.9.9.6
CATEGORIES =	www devel

HOMEPAGE =	http://flyspray.org/

MAINTAINER =	Chris Kuethe <ckuethe@openbsd.org>

# GPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.zip

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/flyspray
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:php5-mysql-*:www/php5/extensions,-mysql

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
