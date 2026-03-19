COMMENT =	library to access the Mac OS disk image format

VERSION =	20251121
BASENAME =	libmodi
DISTNAME =	${BASENAME}-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}

SHARED_LIBS +=  modi			0.0 # 1.0

WANTLIB += bfio c crypto fuse iconv intl m pthread util ssl
WANTLIB += bz2 lzma z ${MODPY_WANTLIB}

CONFIGURE_ARGS +=	--enable-python \
			AWK=/usr/bin/awk

LIB_DEPENDS +=	devel/libbfio

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
