COMMENT =		fast elliptic curve digital signatures

MODPY_EGG_VERSION =	2.3.1

DISTNAME =		fastecdsa-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
DISTFILES +=		${DISTNAME}.tar.gz

CATEGORIES =		security

HOMEPAGE =		https://github.com/AntonKueltz/fastecdsa

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# Avoid fetching test cases from the internet during 'make test'
SITES.ietf =		https://tools.ietf.org/rfc/
DISTFILES.ietf +=	rfc6979.txt
EXTRACT_CASES =		*.txt)	cp ${FULLDISTDIR}/$$archive ${MODPY_TEST_DIR};;

# Unlicense
PERMIT_PACKAGE =	Yes

WANTLIB =		gmp pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_TEST_DIR =	${WRKSRC}/fastecdsa/tests
MODPY_PYTEST_ARGS =	--pyargs fastecdsa

FLAVORS =		python3
FLAVOR =		python3

CFLAGS +=		-I${LOCALBASE}/include

LIB_DEPENDS =		devel/gmp,-main

TEST_DEPENDS =		security/wycheproof-testvectors

post-patch:
	${SUBST_CMD} ${WRKSRC}/fastecdsa/tests/test_whycheproof_vectors.py

.include <bsd.port.mk>
