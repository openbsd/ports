COMMENT=	pytest plugin to create CodSpeed benchmarks

MODPY_EGG_VERSION=	3.0.0
DISTNAME=	pytest_codspeed-${MODPY_EGG_VERSION}
PKGNAME=	py-test-codspeed-${MODPY_EGG_VERSION}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/CodSpeedHQ/pytest-codspeed

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling
NO_TEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-cffi${MODPY_FLAVOR} \
		devel/py-rich${MODPY_FLAVOR} \
		devel/py-setuptools${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR} \
		sysutils/py-filelock${MODPY_FLAVOR}

.include <bsd.port.mk>
