# $OpenBSD: Makefile,v 1.3 2018/07/01 14:21:36 edd Exp $

COMMENT =	Python plugin support for Neovim

MODPY_EGG_VERSION =	0.2.6
DISTNAME =		py-neovim-${MODPY_EGG_VERSION}

CATEGORIES =	editors devel
HOMEPAGE =	https://github.com/neovim/python-client
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

# PyPI filename can clash with the main neovim distfile filename, so we host a
# renamed tarball.
MASTER_SITES =		http://theunixzoo.co.uk/distfiles/

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		net/py-msgpack${MODPY_FLAVOR} \
			devel/py-uv${MODPY_FLAVOR} \
			devel/py-greenlet${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR} \
			${BASE_PKGPATH}=${MODPY_EGG_VERSION}

WRKDIST =		${WRKDIR}/neovim-${MODPY_EGG_VERSION}

# You may need to increase the file descriptor ulimits to run tests.
do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/py.test${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
