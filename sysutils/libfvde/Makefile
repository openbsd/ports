# $OpenBSD: Makefile,v 1.9 2020/07/03 21:13:09 sthen Exp $

COMMENT =	library and tools to access FileVault Drive Encryption

VERSION = 	20191221
DISTNAME =	libfvde-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}
REVISION =	0

SHARED_LIBS +=  fvde                       0.1 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libfvde/wiki

MASTER_SITES =	https://github.com/libyal/libfvde/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio c crypto fuse iconv intl m pthread util z

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python3

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS +=	devel/libbfio

TEST_DEPENDS += shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
