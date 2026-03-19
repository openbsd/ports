COMMENT =	library and tools to access the OLE 2 Compound File

VERSION =	20240427
DISTNAME =	libolecf-alpha-${VERSION}
PKGNAME =	${DISTNAME:S/-alpha//}

SHARED_LIBS +=  olecf                       0.2 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libolecf/wiki

SITES =		https://github.com/libyal/libolecf/releases/download/${VERSION}/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio c fuse iconv intl m pthread util

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/py-setuptools

LIB_DEPENDS +=	devel/libbfio

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
