COMMENT =	Python plugin support for Neovim

MODPY_EGG_VERSION =	0.5.0
DISTNAME =		pynvim-${MODPY_EGG_VERSION}
PKGNAME =		py-neovim-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =	editors devel
HOMEPAGE =	https://github.com/neovim/pynvim
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
PORTHOME =		${WRKDIR}
TEST_ENV =		PYTHONPATH=lib

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		net/py-msgpack${MODPY_FLAVOR} \
			devel/py-greenlet${MODPY_FLAVOR}
TEST_DEPENDS =		editors/neovim

# Note: You may need to increase the file descriptor ulimits to run tests.

.include <bsd.port.mk>
