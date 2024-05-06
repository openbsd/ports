COMMENT=	simplified packaging system for Python modules

MODPY_EGG_VERSION=	68.0.0
DISTNAME=		setuptools-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
EPOCH=			0
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://setuptools.readthedocs.io/en/latest/

MAINTAINER=		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		other
MODPY_PYTEST=		Yes
# test_editable_install.py needs pip_run
MODPY_PYTEST_ARGS =	setuptools/tests \
			--ignore setuptools/tests/test_editable_install.py

SUBST_VARS+=		MODPY_FLAVOR

FLAVORS=		python3
FLAVOR=			python3

BUILD_DEPENDS=		devel/py-wheel${MODPY_FLAVOR}
TEST_DEPENDS=		devel/py-jaraco-envs${MODPY_FLAVOR} \
			devel/py-jaraco-path${MODPY_FLAVOR} \
			devel/py-path${MODPY_FLAVOR} \
			devel/py-pip${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR} \
			sysutils/py-filelock${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-ini2toml${MODPY_FLAVOR} \
			textproc/py-tomli_w${MODPY_FLAVOR}

# Override automatic py-setuptools depend to avoid recursion
MODPY_SETUPUTILS_DEPEND=

.include <bsd.port.mk>
