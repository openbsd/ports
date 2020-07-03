# $OpenBSD: Makefile,v 1.9 2020/07/03 21:12:53 sthen Exp $

COMMENT =	Python plugin support for Neovim

MODPY_EGG_VERSION =	0.4.0
DISTNAME =		pynvim-${MODPY_EGG_VERSION}
PKGNAME =		py-neovim-${MODPY_EGG_VERSION}
REVISION =		0

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
# Some failures:
# https://github.com/neovim/pynvim/issues/416
do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/py.test${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
