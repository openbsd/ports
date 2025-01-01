COMMENT =		fast elliptic curve digital signatures

MODPY_DISTV =		3.0.0

GH_ACCOUNT =		AntonKueltz
GH_PROJECT =		fastecdsa
GH_TAGNAME =		v${MODPY_DISTV}

PKGNAME =		py-fastecdsa-${MODPY_DISTV}

CATEGORIES =		security

HOMEPAGE =		https://github.com/AntonKueltz/fastecdsa

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# Unlicense
PERMIT_PACKAGE =	Yes

WANTLIB =		gmp pthread

MODULES =		lang/python

MODPY_PYBUILD =		setuptools

CFLAGS +=		-I${LOCALBASE}/include

LIB_DEPENDS =		devel/gmp,-main

# This seems broken
#TEST_DEPENDS =		devel/py-test-cov

# Work around empty __init__.py file
pre-test:
	rm -f ${WRKSRC}/fastecdsa/__init__.py

.include <bsd.port.mk>
