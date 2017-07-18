# $OpenBSD: Makefile,v 1.2 2017/07/18 09:42:52 rpointel Exp $

COMMENT =	library and tools to access the VMware Virtual Disk format

VERSION = 	20170226
DISTNAME =	libvmdk-alpha-${VERSION}
PKGNAME =	${DISTNAME:S/-alpha//}

SHARED_LIBS +=  vmdk                       0.0 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libvmdk/wiki

MASTER_SITES =	https://github.com/libyal/libvmdk/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += bfio c fuse m pthread util z ${MODPY_WANTLIB}

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
