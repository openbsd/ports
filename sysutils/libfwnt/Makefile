# $OpenBSD: Makefile,v 1.5 2020/03/17 21:24:30 rpointel Exp $

COMMENT =	library for Windows NT data types

VERSION = 	20191222
DISTNAME =	libfwnt-alpha-${VERSION}
PKGNAME =	${DISTNAME:S/-alpha//}

SHARED_LIBS +=  fwnt                       0.0 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libfwnt/wiki

MASTER_SITES =	https://github.com/libyal/libfwnt/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += iconv intl m pthread util ${MODPY_WANTLIB}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python3 --disable-nls

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python
MODPY_VERSION = ${MODPY_DEFAULT_VERSION_3}

TEST_DEPENDS += shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh


.include <bsd.port.mk>
