# $OpenBSD: Makefile,v 1.10 2019/07/12 20:45:48 sthen Exp $

COMMENT=	futures implementation for Python

MODPY_EGG_VERSION=	3.2.0
DISTNAME=	futures-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# Python Software Foundation license
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS =		lang/python/${MODPY_VERSION},-tests

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test_futures.py

.include <bsd.port.mk>
