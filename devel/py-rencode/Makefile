# $OpenBSD: Makefile,v 1.5 2021/05/21 19:50:28 kmos Exp $

COMMENT =		module for fast object serialization similar to bencode

MODPY_EGG_VERSION =	1.0.6
DISTNAME =		rencode-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

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
