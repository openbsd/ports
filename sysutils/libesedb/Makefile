# $OpenBSD: Makefile,v 1.7 2020/03/17 21:15:38 rpointel Exp $

COMMENT =	library and tools to access the ESE and EDB format

VERSION = 	20191220
DISTNAME =	libesedb-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}

SHARED_LIBS +=  esedb                       0.0 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libesedb/wiki

MASTER_SITES =	https://github.com/libyal/libesedb/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio c fwnt iconv intl m pthread util

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python3

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS +=	devel/libbfio \
		sysutils/libfwnt

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
