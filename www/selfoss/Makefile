# $OpenBSD: Makefile,v 1.18 2016/01/07 21:44:20 ajacoutot Exp $

COMMENT=		rss reader, live stream, mashup, aggregation webapp

GH_TAGNAME=		2.14
GH_ACCOUNT=		SSilence
GH_PROJECT=		selfoss
REVISION=		0

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

do-install:
	sed -i 's,^#\(RewriteBase /selfoss.*\),\1,' ${WRKDIST}/.htaccess
	cp -Rp ${WRKDIST} ${INSTDIR}
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/selfoss.conf ${INSTDIR}/selfoss.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
