COMMENT=	test vectors for pycryptodome

MODPY_DISTV=	1.0.20
DISTNAME=	pycryptodome-test-vectors-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/py//}
EXTRACT_SUFX=	.zip
REVISION=	0

CATEGORIES=	security

HOMEPAGE=	https://www.pycryptodome.org

# BSD + Public Domain
PERMIT_PACKAGE=	Yes

WANTLIB +=	pthread
MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
NO_TEST=	Yes

.include <bsd.port.mk>
