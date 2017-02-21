# $OpenBSD: Makefile,v 1.1.1.1 2017/02/21 12:33:47 rpointel Exp $

COMMENT =	library to access the LVM volume system format

VERSION = 	20160110
DISTNAME =	libvslvm-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}

SHARED_LIBS +=  vslvm                       0.0 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libvslvm/wiki

MASTER_SITES =	https://github.com/libyal/libvslvm/releases/download/${VERSION}/

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
