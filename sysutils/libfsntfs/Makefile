COMMENT =	library and tools to access NTFS

VERSION =	20251028
DISTNAME =	libfsntfs-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}

SHARED_LIBS +=  fsntfs                       0.2 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libfsntfs/wiki

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

SITES =	https://github.com/libyal/libfsntfs/releases/download/${VERSION}/

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio c fuse fwnt iconv intl m pthread util crypto ssl

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/py-setuptools

LIB_DEPENDS +=	devel/libbfio \
		sysutils/libfwnt

TEST_DEPENDS += shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
