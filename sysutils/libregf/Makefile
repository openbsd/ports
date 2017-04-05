# $OpenBSD: Makefile,v 1.2 2017/04/05 11:56:51 rpointel Exp $

COMMENT =	library and tools to access the Windows NT Registry File

VERSION = 	20170130
DISTNAME =	libregf-alpha-${VERSION}
PKGNAME =	${DISTNAME:S/-alpha//}

SHARED_LIBS +=  regf                       0.0 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libregf/wiki

MASTER_SITES =	https://github.com/libyal/libregf/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += bfio c fuse fwsi m pthread util ${MODPY_WANTLIB}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python \
			--with-libfwsi=${LOCALBASE}

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	devel/gettext \
		lang/python

LIB_DEPENDS +=	devel/libbfio \
		sysutils/libfwsi

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
