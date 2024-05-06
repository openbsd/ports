COMMENT=	relaxed test discovery/organization for pytest

MODPY_EGG_VERSION=	2.0.1

DISTNAME=	pytest-relaxed-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://pytest-relaxed.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= tests

RUN_DEPENDS=	devel/py-decorator${MODPY_FLAVOR} \
		devel/py-invoke${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
