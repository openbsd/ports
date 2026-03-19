COMMENT =	library and tools to access LUKS Disk Encryption

VERSION =	20240503
DISTNAME =	libluksde-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}

SHARED_LIBS +=  luksde                     0.2 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libluksde/wiki

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

SITES =	https://github.com/libyal/libluksde/releases/download/${VERSION}/

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += bfio c crypto fuse iconv intl m pthread ssl util
WANTLIB += ${MODPY_WANTLIB}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

BUILD_DEPENDS +=devel/gettext,-tools \
		devel/py-setuptools

LIB_DEPENDS +=	devel/gettext,-runtime \
		devel/libbfio

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
