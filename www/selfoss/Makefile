# $OpenBSD: Makefile,v 1.1.1.1 2013/05/03 23:16:22 rpe Exp $

COMMENT=		rss reader, live stream, mashup, aggregation webapp

DISTNAME=		selfoss-2.6
CATEGORIES=		www

HOMEPAGE=		http://selfoss.aditu.de/

MAINTAINER=		Robert Peichaer <rpe@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.zip

MODULES=		lang/php

RUN_DEPENDS=		lang/php/${MODPHP_VERSION},-gd

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

PREFIX=			/var/www
INSTDIR=		${PREFIX}/selfoss
TINSTDIR=		${TRUEPREFIX}/selfoss
SUBST_VARS=		INSTDIR MODPHP_VERSION TINSTDIR

do-extract:
	mkdir -p ${WRKDIST}
	unzip -oq -d ${WRKDIST} ${FULLDISTDIR}/${EXTRACT_ONLY}
	find ${WRKDIST} -type f | \
		egrep '\.(phtml|php|ini|md|js|svg|css|txt|htaccess)$$' | \
		xargs perl -i -pe 's/\r$$//'

do-install:
	perl -pi -e 's,^#RewriteBase /selfoss,RewriteBase /selfoss,' ${WRKDIST}/.htaccess
	cp -Rp ${WRKDIST} ${INSTDIR}
	${SUBST_CMD} -c ${FILESDIR}/selfoss.conf ${INSTDIR}/selfoss.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
