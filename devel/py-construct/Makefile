COMMENT=	powerful declarative parser/builder for binary data

MODPY_DISTV=	2.10.70

DISTNAME=	construct-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://construct.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

EPOCH=		0

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# pypi sdist only has tests/{__init__.py,test*} and is missing
# other necessary files. Fetching them separately, they run OK with
# these TDEPs/ARGS.
NO_TEST=	Yes
TEST_DEPENDS=	devel/py-arrow \
		devel/py-cloudpickle \
		devel/py-test-benchmark
MODPY_PYTEST_ARGS= --ignore tests/gallery \
		   --ignore tests/deprecated_gallery

.include <bsd.port.mk>
