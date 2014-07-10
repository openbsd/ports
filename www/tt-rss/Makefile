# $OpenBSD: Makefile,v 1.26 2014/07/10 11:06:37 rpe Exp $

COMMENT=		webbased rss reader with standalone look and feel

GH_ACCOUNT=		gothfox
GH_PROJECT=		Tiny-Tiny-RSS
GH_TAGNAME=		1.12
GH_COMMIT=		a983a827a3ac24a16cbffba8db17c891da803389
DISTNAME=		${GH_PROJECT}-${GH_TAGNAME}
PKGNAME=		tt-rss-${GH_TAGNAME}
CATEGORIES=		www

HOMEPAGE=		http://tt-rss.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

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
