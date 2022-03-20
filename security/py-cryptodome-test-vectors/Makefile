COMMENT =	test vectors for pycryptodome

MODPY_EGG_VERSION =	1.0.7
DISTNAME =	pycryptodome-test-vectors-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/py//}
EXTRACT_SUFX =	.zip

CATEGORIES =	security

HOMEPAGE =	https://www.pycryptodome.org

# BSD + Public Domain
PERMIT_PACKAGE =	Yes

WANTLIB +=		pthread
MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

.include <bsd.port.mk>
