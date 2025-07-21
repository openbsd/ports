COMMENT=	capture c-level output in context managers

MODPY_DISTV =	3.1.1
DISTNAME=	wurlitzer-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	2

CATEGORIES=	devel

HOMEPAGE=	https://github.com/minrk/wurlitzer

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS=	test.py

TEST_DEPENDS=	devel/py-cffi

.include <bsd.port.mk>
