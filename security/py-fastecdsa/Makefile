COMMENT =		fast elliptic curve digital signatures

MODPY_EGG_VERSION =	2.2.3

DISTNAME =		fastecdsa-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
DISTFILES +=		${DISTNAME}.tar.gz

CATEGORIES =		security

HOMEPAGE =		https://github.com/AntonKueltz/fastecdsa

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# Avoid fetching test cases from the internet during 'make test'
MASTER_SITES0 =		https://tools.ietf.org/rfc/
DISTFILES +=		rfc6979.txt:0
EXTRACT_CASES =		*.txt)	cp ${FULLDISTDIR}/$$archive ${WRKSRC};;

# Unlicense
PERMIT_PACKAGE =	Yes

WANTLIB =		gmp pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
FLAVORS =		python3
FLAVOR =		python3

CFLAGS +=		-I${LOCALBASE}/include

LIB_DEPENDS =		devel/gmp,-main

TEST_DEPENDS =		security/wycheproof-testvectors

post-patch:
	${SUBST_CMD} ${WRKSRC}/fastecdsa/tests/test_whycheproof_vectors.py

.include <bsd.port.mk>
