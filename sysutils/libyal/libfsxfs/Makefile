COMMENT =	library and tools to access XFS file systems

VERSION =	20240501
BASENAME =	libfsxfs
DISTNAME =	${BASENAME}-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}

SHARED_LIBS +=  fsxfs			0.0 # 1.0

WANTLIB += bfio c crypto fuse iconv intl m pthread util ssl
WANTLIB += ${MODPY_WANTLIB}

CONFIGURE_ARGS +=	--enable-python \
			AWK=/usr/bin/awk

LIB_DEPENDS +=	devel/libbfio

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
