COMMENT =	library to access the GUID Partition Table volumes

VERSION =	20240504
BASENAME =	libvsgpt
DISTNAME =	${BASENAME}-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}

SHARED_LIBS +=  vsgpt				0.0 # 1.0

WANTLIB += bfio c iconv intl m pthread util
WANTLIB += ${MODPY_WANTLIB}

CONFIGURE_ARGS +=	--enable-python \
			AWK=/usr/bin/awk

LIB_DEPENDS +=	devel/libbfio

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
