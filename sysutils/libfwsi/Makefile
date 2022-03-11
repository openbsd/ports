COMMENT =	library to access the Windows Shell Item format

VERSION = 	20191221
DISTNAME =	libfwsi-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}
REVISION =	1

SHARED_LIBS +=  fwsi                       0.0 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libfwsi/wiki

MASTER_SITES =	https://github.com/libyal/libfwsi/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += m pthread util ${MODPY_WANTLIB}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python3

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

BUILD_DEPENDS =	devel/gettext,-tools

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
