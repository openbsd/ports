COMMENT =	library and tools to access the Windows NT Registry File

VERSION = 	20240421
DISTNAME =	libregf-alpha-${VERSION}
PKGNAME =	${DISTNAME:S/-alpha//}

SHARED_LIBS +=  regf                       0.1 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libregf/wiki

SITES =		https://github.com/libyal/libregf/releases/download/${VERSION}/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio c fuse fwnt iconv intl m pthread util

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python \
			--with-libfwnt=${LOCALBASE} \
			AWK=/usr/bin/awk

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/py-setuptools

LIB_DEPENDS +=	devel/libbfio \
		sysutils/libfwnt

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
