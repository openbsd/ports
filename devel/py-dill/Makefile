COMMENT=	serialize/deserialize most Python types

MODPY_DISTV=	0.4.1
DISTNAME=	dill-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

# https://github.com/uqfoundation/dill
HOMEPAGE=	https://dill.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
# disable tests with collection errors (missing deps) to get others to run
MODPY_PYTEST_ARGS= --ignore dill/tests/test_diff.py \
		--ignore dill/tests/test_module.py \
		--ignore dill/tests/test_objects.py \
		--ignore dill/tests/test_registered.py \
		--ignore dill/tests/test_session.py \
		--ignore dill/tests/test_sources.py \
		--ignore dill/tests/test_logger.py

.include <bsd.port.mk>
