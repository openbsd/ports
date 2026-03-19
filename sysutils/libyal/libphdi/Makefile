COMMENT =	library to access the Parallels Hard Disk images

VERSION =	20240508
BASENAME =	libphdi
DISTNAME =	${BASENAME}-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}

SHARED_LIBS +=  phdi			0.0 # 1.0

WANTLIB += bfio c fuse iconv intl m pthread util
WANTLIB += ${MODPY_WANTLIB}

CONFIGURE_ARGS +=	--enable-python \
			AWK=/usr/bin/awk

LIB_DEPENDS +=	devel/libbfio

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
