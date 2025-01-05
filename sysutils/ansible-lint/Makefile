COMMENT =		best practices checker for ansible

MODPY_DISTV =		24.12.2
DISTNAME =		ansible_lint-${MODPY_DISTV}
PKGNAME =		ansible-lint-${MODPY_DISTV}

CATEGORIES =		sysutils

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools_scm
MODPY_PI =		Yes

RUN_DEPENDS =		devel/git \
			sysutils/ansible-core \
			textproc/py-black \
			sysutils/py-filelock \
			devel/py-jsonschema \
			sysutils/py-packaging \
			textproc/py-yaml \
			devel/py-rich \
			textproc/py-ruamel.yaml \
			sysutils/py-ansible-compat>=4.1.11 \
			sysutils/py-subprocess-tee \
			devel/py-yamllint \
			devel/py-wcmatch \

PORTHOME =		${WRKDIR}
# tests need network
MODPY_PYTEST_ARGS =	test
TEST_DEPENDS =		devel/flake8 \
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
