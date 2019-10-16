# $OpenBSD: Makefile,v 1.21 2019/10/16 20:17:27 remi Exp $

COMMENT=	lightweight CalDAV and CardDAV server

VERSION=	0.6.0
DISTNAME=	baikal-${VERSION}
MASTER_SITES=	https://github.com/sabre-io/Baikal/releases/download/${VERSION}/
DISTFILES=	${DISTNAME}.zip
CATEGORIES=	productivity www

HOMEPAGE=	http://sabre.io/baikal/

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/php

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=	${VARBASE}/www
INSTDIR=	${PREFIX}/baikal
WRKSRC=	${WRKDIR}/baikal
SUBST_VARS=	INSTDIR

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC} && tar cf - . | (cd ${INSTDIR}; tar xf -)

.include <bsd.port.mk>
