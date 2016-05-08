# $OpenBSD: Makefile,v 1.19 2016/05/08 15:58:12 rpe Exp $

COMMENT=		rss reader, live stream, mashup, aggregation webapp

GH_TAGNAME=		2.15
GH_ACCOUNT=		SSilence
GH_PROJECT=		selfoss

CATEGORIES=		www

HOMEPAGE=		http://selfoss.aditu.de/

MAINTAINER=		Robert Peichaer <rpe@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/php

RUN_DEPENDS=		lang/php/${MODPHP_VERSION},-gd

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

PREFIX=			${VARBASE}/www
INSTDIR=		${PREFIX}/selfoss
TINSTDIR=		${TRUEPREFIX}/selfoss
SUBST_VARS=		INSTDIR MODPHP_VERSION TINSTDIR

post-extract:
	rm ${WRKSRC}/${FULLPKGNAME}.zip

do-install:
	cp -Rp ${WRKDIST} ${INSTDIR}
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/selfoss.conf ${INSTDIR}/selfoss.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
