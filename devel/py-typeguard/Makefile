COMMENT=	run-time type checker for Python

MODPY_DISTV=	4.4.1
DISTNAME=	typeguard-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/agronholm/typeguard
HOMEPAGE=	https://typeguard.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

TEST_DEPENDS=	devel/py-mypy
RUN_DEPENDS=	devel/py-typing-extensions

.include <bsd.port.mk>
