COMMENT=	lint-like code checker for Python code

# py-astroid and pylint usually need keeping in-sync
# devel/py-python-lsp-server has specific version req's
MODPY_DISTV=	4.1.3
DISTNAME=	pylint-${MODPY_DISTV}
PKGNAME=	pylint3-${MODPY_DISTV}

CATEGORIES=	devel

# https://github.com/PyCQA/pylint
HOMEPAGE=	https://www.pylint.org/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-astroid>=4.3.4,<4.4 \
		devel/py-dill \
		devel/py-isort<10 \
		devel/py-mccabe<0.8 \
		sysutils/py-platformdirs \
		textproc/py-tomlkit

# needs pytest_remaster
MODPY_PYTEST_IGNORE= tests/reporters/unittest_junit_reporter.py

TEST_DEPENDS=	devel/py-gitpython \
		devel/py-test-benchmark

.include <bsd.port.mk>
