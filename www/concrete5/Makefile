# $OpenBSD: Makefile,v 1.13 2013/07/05 09:34:35 jasper Exp $

COMMENT=	building material for websites

V=		5.6.1.1
DISTNAME=	concrete${V}
PKGNAME=	concrete5-${V}
EXTRACT_SUFX=	.zip
CATEGORIES=	www
HOMEPAGE=	http://www.concrete5.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.concrete5.org/download_file/-/view/51531/8497/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/concrete5
SUBST_VARS=	INSTDIR

MODULES=	lang/php
BUILD_DEPENDS=	archivers/unzip
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-mysql

do-install:
	cd ${PREFIX} && ${UNZIP} -oq ${FULLDISTDIR}/${DISTFILES}
	mv ${PREFIX}/concrete${V} ${PREFIX}/concrete5

.include <bsd.port.mk>
