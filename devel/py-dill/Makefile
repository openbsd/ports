COMMENT=	serialize/deserialize most Python types

MODPY_EGG_VERSION=	0.3.9
DISTNAME=	dill-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

# https://github.com/uqfoundation/dill
HOMEPAGE=	https://dill.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
# dosable tests with collection errors to get others to run
MODPY_PYTEST_ARGS= --ignore dill/tests/test_diff.py \
		--ignore dill/tests/test_module.py \
		--ignore dill/tests/test_objects.py \
		--ignore dill/tests/test_registered.py \
		--ignore dill/tests/test_session.py \
		--ignore dill/tests/test_sources.py \
		--ignore dill/tests/test_logger.py

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
