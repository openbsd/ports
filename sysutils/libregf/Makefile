# $OpenBSD: Makefile,v 1.10 2020/07/03 21:13:10 sthen Exp $

COMMENT =	library and tools to access the Windows NT Registry File

VERSION = 	20170130
DISTNAME =	libregf-alpha-${VERSION}
PKGNAME =	${DISTNAME:S/-alpha//}
REVISION = 	3

SHARED_LIBS +=  regf                       0.0 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libregf/wiki

MASTER_SITES =	https://github.com/libyal/libregf/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio c fuse fwnt iconv intl m pthread util

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python3 \
			--with-libfwnt=${LOCALBASE} \
			AWK=/usr/bin/awk

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
