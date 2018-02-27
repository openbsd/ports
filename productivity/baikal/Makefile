# $OpenBSD: Makefile,v 1.14 2018/02/27 21:47:38 espie Exp $

COMMENT=	lightweight CalDAV and CardDAV server

VERSION=	0.4.6
DISTNAME=	baikal-${VERSION}
MASTER_SITES=	https://github.com/fruux/Baikal/releases/download/${VERSION}/
DISTFILES=	${DISTNAME}.zip
CATEGORIES=	productivity www
REVISION=	0

HOMEPAGE=	http://sabre.io/baikal/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

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
