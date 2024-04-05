COMMENT =		best practices checker for ansible

MODPY_EGG_VERSION =	24.2.1
DISTNAME =		ansible-lint-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools_scm
MODPY_PI =		Yes

BUILD_DEPENDS =		devel/py-setuptools_scm_git_archive${MODPY_FLAVOR}

RUN_DEPENDS =		devel/git \
			sysutils/ansible-core \
			textproc/py-black${MODPY_FLAVOR} \
			sysutils/py-filelock${MODPY_FLAVOR} \
			devel/py-jsonschema${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			devel/py-rich${MODPY_FLAVOR} \
			textproc/py-ruamel.yaml${MODPY_FLAVOR} \
			sysutils/py-ansible-compat${MODPY_FLAVOR}>=4.1.11 \
			sysutils/py-subprocess-tee${MODPY_FLAVOR} \
			devel/py-yamllint${MODPY_FLAVOR} \
			devel/py-wcmatch${MODPY_FLAVOR} \

PORTHOME =		${WRKDIR}
# tests need network
MODPY_PYTEST_ARGS =	test
TEST_DEPENDS =		devel/flake8 \
			devel/pylint${MODPY_FLAVOR} \
			devel/py-flaky${MODPY_FLAVOR} \
			devel/py-mypy${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
			textproc/py-tomli${MODPY_FLAVOR} \
			textproc/py-license-expression${MODPY_FLAVOR} \
			sysutils/py-ansible-compat${MODPY_FLAVOR} \
			shells/bash \
			misc/findutils

.include <bsd.port.mk>
