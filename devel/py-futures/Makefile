# $OpenBSD: Makefile,v 1.4 2015/12/29 15:50:58 shadchin Exp $

COMMENT=	futures implementation for Python

MODPY_EGG_VERSION=	3.0.3
DISTNAME=	futures-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE =		https://pypi.python.org/pypi/futures

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes

TEST_DEPENDS =		lang/python/${MODPY_VERSION},-tests

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test_futures.py

.include <bsd.port.mk>
