COMMENT=	crypto and TLS toolkit for Python

MODPY_DISTV=	0.41.0
DISTNAME=	M2Crypto-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	security

HOMEPAGE=	https://gitlab.com/m2crypto/m2crypto

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	crypto pthread ssl ${MODPY_WANTLIB}

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/swig
MAKE_ENV=	SWIG_FEATURES=-I/usr/include

# skip tests which hang
MODPY_PYTEST_ARGS=	-k 'not test_do_handshake_succeed and not test_verify_cb_old'

.include <bsd.port.mk>
