# $OpenBSD: Makefile,v 1.1.1.1 2020/03/17 21:21:05 rpointel Exp $

COMMENT =	library and tools to access the Apple File System

VERSION = 	20191221
DISTNAME =	libfsapfs-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}

SHARED_LIBS +=  fsapfs                       0.0 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libfsapfs/wiki

MASTER_SITES =	https://github.com/libyal/libfsapfs/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += bfio c crypto fuse iconv intl m pthread util z
WANTLIB += ${MODPY_WANTLIB}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python3 \
			AWK=/usr/bin/awk

WRKDIST =       ${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS +=	devel/libbfio \
		sysutils/libfwnt

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
