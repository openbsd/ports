COMMENT=	Python interface to GMP, MPFR, and MPC

MODPY_DISTV=	2.2.1
DISTNAME=	gmpy2-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	math

HOMEPAGE=	https://github.com/aleaxit/gmpy

# LGPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += gmp mpc mpfr

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

LIB_DEPENDS=	devel/gmp \
		devel/libmpc \
		devel/mpfr

CFLAGS+=	-I${LOCALBASE}/include

do-test:
	cd ${WRKSRC} && ${TEST_ENV} ${MODPY_BIN} test/conftest.py

.include <bsd.port.mk>
