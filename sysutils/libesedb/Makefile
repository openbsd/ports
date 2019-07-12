# $OpenBSD: Makefile,v 1.6 2019/07/12 20:49:44 sthen Exp $

COMMENT =	library and tools to access the ESE and EDB format

VERSION = 	20170121
DISTNAME =	libesedb-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}
REVISION =	0

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
CONFIGURE_ARGS +=	--enable-python

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS +=	devel/libbfio \
		sysutils/libfwnt

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
