# $OpenBSD: Makefile,v 1.2 2018/02/01 13:24:15 rpointel Exp $

COMMENT =	library for Windows NT data types

VERSION = 	20180117
DISTNAME =	libfwnt-alpha-${VERSION}
PKGNAME =	${DISTNAME:S/-alpha//}

SHARED_LIBS +=  fwnt                       0.0 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libfwnt/wiki

MASTER_SITES =	https://github.com/libyal/libfwnt/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m pthread util ${MODPY_WANTLIB}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

TEST_DEPENDS += shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh


.include <bsd.port.mk>
