# $OpenBSD: Makefile,v 1.9 2021/11/02 00:02:24 sthen Exp $

COMMENT =	library to access the LVM volume system format

VERSION = 	20200102
DISTNAME =	libvslvm-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}
REVISION =	1

SHARED_LIBS +=  vslvm                       0.0 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libvslvm/wiki

MASTER_SITES =	https://github.com/libyal/libvslvm/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio c fuse iconv intl m pthread util

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python3

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS +=	devel/libbfio

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
