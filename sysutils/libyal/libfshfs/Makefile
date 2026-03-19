COMMENT =	library and tools to access the Mac OS HFS file system

VERSION =	20260130
BASENAME =	libfshfs
DISTNAME =	${BASENAME}-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}

SHARED_LIBS +=  fshfs			0.0 # 1.0

WANTLIB += bfio c crypto fuse iconv intl m pthread util ssl z
WANTLIB += ${MODPY_WANTLIB}

CONFIGURE_ARGS +=	--enable-python \
			AWK=/usr/bin/awk

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/py-setuptools

LIB_DEPENDS +=	devel/libbfio

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
