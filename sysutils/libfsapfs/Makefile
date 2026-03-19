COMMENT =	library and tools to access the Apple File System

VERSION =	20240429
DISTNAME =	libfsapfs-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}

SHARED_LIBS +=  fsapfs                       0.1 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libfsapfs/wiki

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

SITES =	https://github.com/libyal/libfsapfs/releases/download/${VERSION}/

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += bfio c crypto fuse iconv intl m pthread util z ssl
WANTLIB += ${MODPY_WANTLIB}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python \
			AWK=/usr/bin/awk

WRKDIST =       ${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/py-setuptools

LIB_DEPENDS +=	devel/libbfio \
		sysutils/libfwnt

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
