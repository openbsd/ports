COMMENT =		fast elliptic curve digital signatures

MODPY_DISTV =	2.3.2

GH_ACCOUNT =		AntonKueltz
GH_PROJECT =		fastecdsa
GH_TAGNAME =		v${MODPY_DISTV}

PKGNAME =		py-fastecdsa-${MODPY_DISTV}
REVISION =		1

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

CFLAGS +=		-I${LOCALBASE}/include

LIB_DEPENDS =		devel/gmp,-main

pre-test:
	mkdir -p ${WRKSRC}/fastecdsa/tests/fastecdsa/tests
	ln -fs ../../vectors ${WRKSRC}/fastecdsa/tests/fastecdsa/tests/

.include <bsd.port.mk>
