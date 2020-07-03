# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:48 sthen Exp $

COMMENT =		module for fast object serialization similar to bencode

MODPY_EGG_VERSION =	1.0.6
DISTNAME =		rencode-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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

TESTLIBDIR=		${WRKSRC}/lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}/

pre-test:
	cp ${TESTLIBDIR}/rencode/*.so ${WRKSRC}/rencode

.include <bsd.port.mk>
