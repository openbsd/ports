COMMENT=	powerful declarative parser/builder for binary data

MODPY_EGG_VERSION= 2.10.70

DISTNAME=	construct-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://construct.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

EPOCH=		0

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

# pypi sdist only has tests/{__init__.py,test*} and is missing
# other necessary files. Fetching them separately, they run OK with
# these TDEPs/ARGS.
NO_TEST=	Yes
TEST_DEPENDS=	devel/py-arrow${MODPY_FLAVOR} \
		devel/py-cloudpickle${MODPY_FLAVOR} \
		devel/py-test-benchmark${MODPY_FLAVOR}
MODPY_PYTEST_ARGS= --ignore tests/gallery \
		   --ignore tests/deprecated_gallery

.include <bsd.port.mk>
