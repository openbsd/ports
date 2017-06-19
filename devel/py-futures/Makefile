# $OpenBSD: Makefile,v 1.8 2017/06/19 23:03:35 bcallah Exp $

COMMENT=	futures implementation for Python

MODPY_EGG_VERSION=	3.1.1
DISTNAME=	futures-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# Python Software Foundation license
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS =		lang/python/${MODPY_VERSION},-tests

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test_futures.py

.include <bsd.port.mk>
