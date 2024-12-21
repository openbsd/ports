COMMENT =	Python plugin support for Neovim

MODPY_DISTV =	0.5.0
DISTNAME =		pynvim-${MODPY_DISTV}
PKGNAME =		py-neovim-${MODPY_DISTV}
REVISION =		1

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

RUN_DEPENDS =		net/py-msgpack \
			devel/py-greenlet
TEST_DEPENDS =		editors/neovim

# Note: You may need to increase the file descriptor ulimits to run tests.

.include <bsd.port.mk>
