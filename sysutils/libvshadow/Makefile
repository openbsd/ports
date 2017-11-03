# $OpenBSD: Makefile,v 1.2 2017/11/03 13:58:45 rpointel Exp $

COMMENT =	library and tools to access the VSSformat

VERSION = 	20170902
DISTNAME =	libvshadow-alpha-${VERSION}
PKGNAME =	${DISTNAME:S/-alpha//}

SHARED_LIBS +=  vshadow                       0.1 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libvshadow/wiki

MASTER_SITES =	https://github.com/libyal/libvshadow/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += bfio c fuse m pthread util ${MODPY_WANTLIB}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	devel/gettext \
		lang/python

LIB_DEPENDS +=	devel/libbfio

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
