# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:41 espie Exp $

COMMENT=	building material for websites

V=		5.6.0.2
DISTNAME=	concrete${V}
PKGNAME=	concrete5-${V}
REVISION=	1
EXTRACT_SUFX=	.zip
CATEGORIES=	www
HOMEPAGE=	http://www.concrete5.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.concrete5.org/download_file/-/view/44326/8497/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		/var/www
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
