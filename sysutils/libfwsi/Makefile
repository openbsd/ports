# $OpenBSD: Makefile,v 1.1.1.1 2017/02/12 07:07:55 rpointel Exp $

COMMENT =	library to access the Windows Shell Item format

VERSION = 	20160110
DISTNAME =	libfwsi-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}

SHARED_LIBS +=  fwsi                       0.0 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libfwsi/wiki

MASTER_SITES =	https://github.com/libyal/libfwsi/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m pthread util ${MODPY_WANTLIB}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
