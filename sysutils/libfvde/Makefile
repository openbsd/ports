# $OpenBSD: Makefile,v 1.4 2018/02/17 19:45:37 naddy Exp $

COMMENT =	library and tools to access FileVault Drive Encryption

VERSION = 	20170930
DISTNAME =	libfvde-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}
REVISION =	0

SHARED_LIBS +=  fvde                       0.1 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libfvde/wiki

MASTER_SITES =	https://github.com/libyal/libfvde/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio c crypto fuse iconv intl m pthread util z

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS +=	devel/libbfio

TEST_DEPENDS += shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
