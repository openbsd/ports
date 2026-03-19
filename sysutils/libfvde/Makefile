COMMENT =	library and tools to access FileVault Drive Encryption

VERSION =	20240502
DISTNAME =	libfvde-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}

SHARED_LIBS +=  fvde                       0.2 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libfvde/wiki

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

SITES =		https://github.com/libyal/libfvde/releases/download/${VERSION}/

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio c crypto fuse iconv intl m pthread ssl util z

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/py-setuptools

LIB_DEPENDS +=	devel/libbfio

TEST_DEPENDS += shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
