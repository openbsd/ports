# $OpenBSD: Makefile,v 1.1.1.1 2019/10/03 09:25:16 kn Exp $

COMMENT =		module for fast object serialization similar to bencode

MODPY_EGG_VERSION =	1.0.6
DISTNAME =		rencode-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/aresch/rencode

# GPLv3
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR ?=

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

WANTLIB +=		pthread ${MODPY_WANTLIB}

BUILD_DEPENDS =		devel/py-wheel${MODPY_FLAVOR}

.include <bsd.port.mk>
