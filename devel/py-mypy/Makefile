COMMENT=	optional static type checker for Python

MODPY_EGG_VERSION=	1.10.0
DISTNAME=	mypy-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/python/mypy
HOMEPAGE=	https://www.mypy-lang.org/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
BUILD_DEPENDS=	devel/py-types-psutil${MODPY_FLAVOR} \
		devel/py-types-setuptools${MODPY_FLAVOR}
RUN_DEPENDS=	devel/py-typing-extensions${MODPY_FLAVOR} \
		devel/py-mypy-extensions${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-test-xdist${MODPY_FLAVOR} \
		sysutils/py-filelock${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
