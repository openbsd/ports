COMMENT=	best practices checker for ansible

MODPY_DISTV=	25.11.0
DISTNAME=	ansible_lint-${MODPY_DISTV}
PKGNAME=	ansible-lint-${MODPY_DISTV}

HOMEPAGE=	https://github.com/ansible/ansible-lint

CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

RUN_DEPENDS=	devel/git \
		sysutils/ansible-core \
		sysutils/py-ansible-compat \
		textproc/py-black \
		sysutils/py-filelock \
		devel/py-importlib-metadata \
		devel/py-jsonschema \
		sysutils/py-packaging \
		devel/py-pathspec \
		textproc/py-yaml \
		textproc/py-ruamel.yaml \
		textproc/py-referencing \
		sysutils/py-subprocess-tee \
		devel/py-yamllint \
		devel/py-wcmatch

PORTHOME=	${WRKDIR}

# tests need network
MODPY_PYTEST_ARGS= test
TEST_DEPENDS=	devel/flake8 \
		devel/pylint \
		devel/py-flaky \
		devel/py-mypy \
		devel/py-test-cov \
		devel/py-test-mock \
		devel/py-test-xdist \
		textproc/py-tomli \
		textproc/py-license-expression \
		sysutils/py-ansible-compat \
		shells/bash \
		misc/findutils

.include <bsd.port.mk>
