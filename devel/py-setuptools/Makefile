COMMENT=	simplified packaging system for Python modules

# py-types-setuptools should have a matching version
MODPY_DISTV=		75.6.0
DISTNAME=		setuptools-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
REVISION=		0

EPOCH=			0

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
MODPY_PYTEST_ARGS=	setuptools/tests \
			--ignore setuptools/tests/test_editable_install.py \
			--ignore setuptools/tests/compat/py39.py

BUILD_DEPENDS=		devel/py-more-itertools \
			devel/py-wheel \
			sysutils/py-packaging

# setuptools includes various vendored dependencies however, if another
# version (newer or older) is installed, that will take precedence.
# in order to give more consistent behaviour, list those as RUN_DEPENDS
# where possible (i.e. where it wouldn't result in a loop).
RUN_DEPENDS=		sysutils/py-packaging \
			devel/py-more-itertools \
			devel/py-wheel

# remove vendored modules that can come from other ports, or are
# not needed with our Python version. keep those which use setuptools
# themselves, as they can't be used in RUN_DEPENDS: autocommand,
# inflect, jaraco.{text,context,functools,collections}, platformdirs,
# typeguard.
post-extract:
	cd ${WRKSRC}/setuptools/_vendor; rm -r \
	    packaging* wheel* more_itertools* backports backports.tarfile* \
	    importlib_metadata* tomli* typing_extensions* zipp*

TEST_DEPENDS=		${MODPY_RUN_DEPENDS},-tests \
			devel/py-virtualenv \
			devel/py-wheel \
			devel/py-pip \
			sysutils/py-packaging \
			devel/py-jaraco-envs \
			devel/py-test-xdist \
			devel/py-jaraco-path \
			sysutils/py-filelock \
			textproc/py-ini2toml \
			textproc/py-tomli_w \
			devel/py-test-timeout \
			devel/py-test-cov \
			devel/py-pyproject_hooks \
			devel/py-jaraco-test

post-install:
	cd ${WRKINST}${MODPY_SITEPKG}; \
	rm -r pkg_resources/tests \
		setuptools/tests \
		setuptools/_distutils/tests; \
	rm setuptools/{cli,gui}*.exe

.include <bsd.port.mk>
