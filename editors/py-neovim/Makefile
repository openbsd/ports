# $OpenBSD: Makefile,v 1.6 2019/05/15 12:04:38 kmos Exp $

COMMENT =	Python plugin support for Neovim

MODPY_EGG_VERSION =	0.3.2
DISTNAME =		pynvim-${MODPY_EGG_VERSION}
PKGNAME =		py-neovim-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =	editors devel
HOMEPAGE =	https://github.com/neovim/python-client
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE_CDROM =	Yes

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
do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/py.test${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
