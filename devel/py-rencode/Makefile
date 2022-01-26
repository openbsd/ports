# $OpenBSD: Makefile,v 1.8 2022/01/26 22:58:21 kmos Exp $

COMMENT =		module for fast object serialization similar to bencode

MODPY_EGG_VERSION =	1.0.6
DISTNAME =		rencode-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		4

CATEGORIES =		devel

HOMEPAGE =		https://github.com/aresch/rencode

# GPLv3
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR =	python3

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

WANTLIB +=		pthread ${MODPY_WANTLIB}

BUILD_DEPENDS =		devel/py-wheel${MODPY_FLAVOR}

pre-test:
	cp ${WRKSRC}/${MODPY_TEST_LIBDIR}/rencode/*.so ${WRKSRC}/rencode

.include <bsd.port.mk>
