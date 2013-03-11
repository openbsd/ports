# $OpenBSD: Makefile,v 1.14 2013/03/11 11:44:50 espie Exp $

COMMENT=		webbased rss reader with standalone look and feel

DISTNAME=		tt-rss-1.5.11
CATEGORIES=		www
REVISION =		1

HOMEPAGE=		http://tt-rss.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/download/

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

PREFIX=			/var/www
INSTDIR=		${PREFIX}/tt-rss
SUBST_VARS=		INSTDIR MODPHP_BIN

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-pgsql \
		lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-xmlrpc

do-install:
	cp -Rp ${WRKDIST} ${INSTDIR}
	${SUBST_CMD} ${INSTDIR}/{update.php,config.php-dist}
	rm -Rf ${INSTDIR}/{*.{beforesubst,orig},.*,debian}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
