# $OpenBSD: Makefile,v 1.20 2017/04/21 20:46:42 rpe Exp $

COMMENT=		rss reader, live stream, mashup, aggregation webapp

V=			2.17
DISTNAME=		selfoss-$V

CATEGORIES=		www

HOMEPAGE=		http://selfoss.aditu.de/

MAINTAINER=		Robert Peichaer <rpe@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://github.com/SSilence/selfoss/releases/download/$V/
EXTRACT_SUFX=		.zip

MODULES=		lang/php

RUN_DEPENDS=		lang/php/${MODPHP_VERSION},-gd

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

PREFIX=			${VARBASE}/www
INSTDIR=		${PREFIX}/selfoss
TINSTDIR=		${TRUEPREFIX}/selfoss
SUBST_VARS=		INSTDIR MODPHP_VERSION TINSTDIR

do-extract:
	mkdir -p ${WRKDIST}
	unzip -oq -d ${WRKDIST} ${FULLDISTDIR}/${EXTRACT_ONLY}

do-install:
	cp -Rp ${WRKDIST} ${INSTDIR}
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/selfoss.conf ${INSTDIR}/selfoss.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
