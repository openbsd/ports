# $OpenBSD: Makefile,v 1.10 2020/08/18 19:17:28 edd Exp $

COMMENT =	Python plugin support for Neovim

MODPY_EGG_VERSION =	0.4.1
DISTNAME =		pynvim-${MODPY_EGG_VERSION}
PKGNAME =		py-neovim-${MODPY_EGG_VERSION}

CATEGORIES =	editors devel
HOMEPAGE =	https://github.com/neovim/python-client
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		net/py-msgpack${MODPY_FLAVOR} \
			devel/py-uv${MODPY_FLAVOR} \
			devel/py-greenlet${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			${BASE_PKGPATH}=${MODPY_EGG_VERSION}

# You may need to increase the file descriptor ulimits to run tests.
#
# Test suite hangs if $HOME isn't valid.
#
# Some failures:
# https://github.com/neovim/pynvim/issues/416
do-test:
	cd ${WRKSRC} && env HOME=${WRKDIR} \
		${LOCALBASE}/bin/py.test${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
