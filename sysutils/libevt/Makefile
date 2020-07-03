# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:09 sthen Exp $

COMMENT =	library and tools to access the Windows Event Log (EVT)

VERSION = 	20191221
DISTNAME =	libevt-alpha-${VERSION}
PKGNAME =	${DISTNAME:S/-alpha//}
REVISION =	0

SHARED_LIBS +=  evt                       0.0 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libevt/wiki

MASTER_SITES =	https://github.com/libyal/libevt/releases/download/${VERSION}/

MAINTAINER = 	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio c iconv intl m pthread util

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python3 \
			--without-libfwnt \
			--without-libregf

WRKDIST =	${WRKDIR}/${PKGNAME}
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

MODULES +=	lang/python

BUILD_DEPENDS +=	devel/gettext,-tools
LIB_DEPENDS +=	devel/libbfio

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
