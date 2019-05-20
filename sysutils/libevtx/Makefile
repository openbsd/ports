# $OpenBSD: Makefile,v 1.3 2019/05/20 22:15:24 naddy Exp $

COMMENT =	library and tools to access the Windows XML Event Log (EVTX)

VERSION = 	20170122
DISTNAME =	libevtx-alpha-${VERSION}
PKGNAME =	${DISTNAME:S/-alpha//}
REVISION =	0

SHARED_LIBS +=  evtx                       0.0 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libevtx/wiki

MASTER_SITES =	https://github.com/libyal/libevtx/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += bfio c iconv intl m pthread util ${MODPY_WANTLIB}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python \
			--without-libfwnt \
			--without-libregf

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

MODPY_ADJ_FILES += tests/pyevtx_test_support.py

# xgettext(1)
BUILD_DEPENDS +=	devel/gettext,-tools

LIB_DEPENDS +=	devel/libbfio

TEST_DEPENDS += shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
