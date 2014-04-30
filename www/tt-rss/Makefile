# $OpenBSD: Makefile,v 1.25 2014/04/30 21:52:07 landry Exp $

COMMENT=		webbased rss reader with standalone look and feel

GH_VER=			1.12
DISTNAME=		Tiny-Tiny-RSS-${GH_VER}
PKGNAME=		tt-rss-${GH_VER}
CATEGORIES=		www

HOMEPAGE=		http://tt-rss.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://github.com/gothfox/Tiny-Tiny-RSS/archive/
DISTFILES =		${DISTNAME}{${GH_VER}}${EXTRACT_SUFX}

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

PREFIX=		${VARBASE}/www
INSTDIR=		${PREFIX}/tt-rss
SUBST_VARS=		INSTDIR MODPHP_BIN

MODULES=		lang/php
RUN_DEPENDS=		lang/php/${MODPHP_VERSION},-pgsql \
			lang/php/${MODPHP_VERSION},-curl \
			lang/php/${MODPHP_VERSION},-xmlrpc

do-install:
	find ${WRKDIST}/lib/ -name '*.js.uncompressed.js' -exec rm {} +
	cp -Rp ${WRKDIST} ${INSTDIR}
	${SUBST_CMD} ${INSTDIR}/{update.php,config.php-dist}
	rm -Rf ${INSTDIR}/{*.{beforesubst,orig},.*,debian}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
