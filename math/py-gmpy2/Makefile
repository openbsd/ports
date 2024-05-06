COMMENT=	interface to GMP/MPIR, MPFR, and MPC for Python

MODPY_EGG_VERSION=	2.1.5
DISTNAME=	gmpy2-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	math

# https://github.com/aleaxit/gmpy
HOMEPAGE=	https://gmpy2.readthedocs.io/

# LGPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += gmp m mpc mpfr

FLAVORS=	python3
FLAVOR=		python3

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

LIB_DEPENDS=	devel/gmp \
		devel/libmpc \
		devel/mpfr
CFLAGS+=	-I${LOCALBASE}/include

do-test:
	cd ${WRKSRC}; ${TEST_ENV} ${MODPY_BIN} test/runtests.py

.include <bsd.port.mk>
