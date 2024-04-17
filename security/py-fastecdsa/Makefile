COMMENT =		fast elliptic curve digital signatures

MODPY_EGG_VERSION =	2.3.2

GH_ACCOUNT =		AntonKueltz
GH_PROJECT =		fastecdsa
GH_TAGNAME =		v${MODPY_EGG_VERSION}

PKGNAME =		py-fastecdsa-${MODPY_EGG_VERSION}

CATEGORIES =		security

HOMEPAGE =		https://github.com/AntonKueltz/fastecdsa

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# Unlicense
PERMIT_PACKAGE =	Yes

WANTLIB =		gmp pthread

MODULES =		lang/python

MODPY_PYBUILD =		setuptools
MODPY_TEST_DIR =	${WRKSRC}/fastecdsa/tests
MODPY_PYTEST_ARGS =	--pyargs fastecdsa

FLAVORS =		python3
FLAVOR =		python3

CFLAGS +=		-I${LOCALBASE}/include

LIB_DEPENDS =		devel/gmp,-main

pre-test:
	mkdir -p ${WRKSRC}/fastecdsa/tests/fastecdsa/tests
	ln -fs ../../vectors ${WRKSRC}/fastecdsa/tests/fastecdsa/tests/

.include <bsd.port.mk>
