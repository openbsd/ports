# $OpenBSD: Makefile,v 1.8 2019/07/12 20:49:04 sthen Exp $

COMMENT =		access the BitLocker Drive Encryption encrypted volumes

VERSION =		20170902
DISTNAME =		libbde-alpha-${VERSION}
PKGNAME =		libbde-${VERSION}
REVISION =		0

SHARED_LIBS +=  bde                       0.1 # 1.0

CATEGORIES =		security

HOMEPAGE =		https://github.com/libyal/libbde/

MASTER_SITES =		https://github.com/libyal/libbde/releases/download/${VERSION}/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio c crypto fuse iconv intl m pthread util

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--mandir=${PREFIX}/man \
			--enable-python \
			--with-pyprefix=${LOCALBASE} \
			AWK=/usr/bin/awk

WRKDIST =		${WRKDIR}/${PKGNAME}

MODULES =		lang/python

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS +=		devel/libbfio

TEST_DEPENDS += shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

do-test:
	cd ${WRKSRC}/tests/ && make check-TESTS

.include <bsd.port.mk>
