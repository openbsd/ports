COMMENT=	simplified packaging system for Python modules

# py-types-setuptools should have a matching version
MODPY_DISTV=	69.5.1
DISTNAME=		setuptools-${MODPY_DISTV}
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

BUILD_DEPENDS=		devel/py-wheel

TEST_DEPENDS=		devel/py-jaraco-envs \
			devel/py-jaraco-path \
			devel/py-path \
			devel/py-pip \
			devel/py-test-cov \
			devel/py-test-timeout \
			devel/py-test-xdist \
			devel/py-wheel \
			sysutils/py-filelock \
			sysutils/py-packaging \
			textproc/py-ini2toml \
			textproc/py-tomli_w

.include <bsd.port.mk>
