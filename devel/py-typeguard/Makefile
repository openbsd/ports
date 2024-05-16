COMMENT=	run-time type checker for Python

MODPY_EGG_VERSION=	4.2.1
DISTNAME=	typeguard-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/agronholm/typeguard
HOMEPAGE=	https://typeguard.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

FLAVORS=	python3
FLAVOR=		python3

TEST_DEPENDS=	devel/py-mypy${MODPY_FLAVOR}
RUN_DEPENDS=	devel/py-typing-extensions${MODPY_FLAVOR}

.include <bsd.port.mk>
