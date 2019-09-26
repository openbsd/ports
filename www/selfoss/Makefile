# $OpenBSD: Makefile,v 1.28 2019/09/26 21:59:31 sthen Exp $

COMMENT=		rss reader, live stream, mashup, aggregation webapp

V=			2.18
DISTNAME=		selfoss-$V
REVISION=		5

CATEGORIES=		www

HOMEPAGE=		http://selfoss.aditu.de/

# GPLv3
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://github.com/SSilence/selfoss/releases/download/$V/
EXTRACT_SUFX=		.zip

MODULES=		lang/php

RUN_DEPENDS=		lang/php/${MODPHP_VERSION},-gd \
			${MODPHP_PDO_DEPENDS}

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
