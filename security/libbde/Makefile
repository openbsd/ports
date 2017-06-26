# $OpenBSD: Makefile,v 1.3 2017/06/26 13:59:54 espie Exp $

COMMENT =		access the BitLocker Drive Encryption encrypted volumes

VERSION =		20170204
DISTNAME =		libbde-alpha-${VERSION}
PKGNAME =		libbde-${VERSION}

SHARED_LIBS +=  bde                       0.0 # 1.0

CATEGORIES =		security

HOMEPAGE =		https://github.com/libyal/libbde/

MASTER_SITES =		https://github.com/libyal/libbde/releases/download/${VERSION}/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += bfio c crypto fuse m pthread util ${MODPY_WANTLIB}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--mandir=${PREFIX}/man \
			--enable-python \
			--with-pyprefix=${LOCALBASE} \
			AWK=/usr/bin/awk

WRKDIST =		${WRKDIR}/${PKGNAME}

MODULES =		devel/gettext \
			lang/python

LIB_DEPENDS +=		devel/libbfio

TEST_DEPENDS += shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

do-test:
	cd ${WRKSRC}/tests/ && make check-TESTS

.include <bsd.port.mk>
