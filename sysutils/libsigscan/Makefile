# $OpenBSD: Makefile,v 1.1.1.1 2017/02/14 20:20:30 rpointel Exp $

COMMENT =	library for binary signature scanning

VERSION = 	20160312
DISTNAME =	libsigscan-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}

SHARED_LIBS +=  sigscan                       0.0 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libsigscan/wiki

MASTER_SITES =	https://github.com/libyal/libsigscan/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += bfio c m pthread util ${MODPY_WANTLIB}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python

WRKDIST =	${WRKDIR}/${PKGNAME}
			
MODULES +=	devel/gettext \
		lang/python

LIB_DEPENDS +=	devel/libbfio

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libsigscan/
	mv ${WRKINST}${SYSCONFDIR}/sigscan.conf ${PREFIX}/share/examples/libsigscan/

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
