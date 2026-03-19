COMMENT =	access the BitLocker Drive Encryption encrypted volumes

VERSION =	20240502
DISTNAME =	libbde-alpha-${VERSION}
PKGNAME =	libbde-${VERSION}

SHARED_LIBS +=  bde                       0.1 # 1.0

CATEGORIES =	security

HOMEPAGE =	https://github.com/libyal/libbde/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

SITES =		https://github.com/libyal/libbde/releases/download/${VERSION}/

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio c crypto fuse iconv intl m pthread util ssl

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--mandir=${PREFIX}/man \
			--enable-python \
			AWK=/usr/bin/awk

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES =	lang/python

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/py-setuptools

LIB_DEPENDS +=	devel/libbfio

TEST_DEPENDS += shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

do-test:
	cd ${WRKSRC}/tests/ && make check-TESTS

.include <bsd.port.mk>
