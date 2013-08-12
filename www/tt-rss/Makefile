# $OpenBSD: Makefile,v 1.18 2013/08/12 04:11:22 robert Exp $

COMMENT=		webbased rss reader with standalone look and feel

V=			1.7.9
DISTNAME=		Tiny-Tiny-RSS-$V
REVISION=		0
PKGNAME=		tt-rss-$V
CATEGORIES=		www

HOMEPAGE=		http://tt-rss.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://github.com/gothfox/Tiny-Tiny-RSS/archive/${V}.tar.gz?dummy=/

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

WRKDIST=		${WRKDIR}/Tiny-Tiny-RSS-$V

do-install:
	find ${WRKDIST}/lib/ -name '*.js.uncompressed.js' -exec rm {} +
	cp -Rp ${WRKDIST} ${INSTDIR}
	${SUBST_CMD} ${INSTDIR}/{update.php,config.php-dist}
	rm -Rf ${INSTDIR}/{*.{beforesubst,orig},.*,debian}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
