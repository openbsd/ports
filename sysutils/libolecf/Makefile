# $OpenBSD: Makefile,v 1.9 2020/07/03 21:13:09 sthen Exp $

COMMENT =	library and tools to access the OLE 2 Compound File

VERSION = 	20191221
DISTNAME =	libolecf-alpha-${VERSION}
PKGNAME =	${DISTNAME:S/-alpha//}
REVISION =	0

SHARED_LIBS +=  olecf                       0.1 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libolecf/wiki

MASTER_SITES =	https://github.com/libyal/libolecf/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio c fuse iconv intl m pthread util

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python3

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS +=	devel/libbfio

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
