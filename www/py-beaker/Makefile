COMMENT=	session and caching library with wsgi middleware

MODPY_DISTV=	1.13.0
DISTNAME=	Beaker-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:L}
REVISION=	0

CATEGORIES=	www devel

HOMEPAGE=	https://beaker.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

MODULES=	lang/python

RUN_DEPENDS=	security/py-cryptodome

TEST_DEPENDS=	databases/py-sqlalchemy \
		databases/py-mongo \
		databases/py-redis \
		devel/py-coverage \
		devel/py-mock \
		devel/py-nose \
		misc/py-memcached \
		security/py-cryptography \
		www/py-webtest

# needs a running memcached instance in 127.0.0.1:11211
TEST_IS_INTERACTIVE= Yes

pre-test:
	perl -pi -e 's|pycryptopp,||g' ${WRKSRC}/setup.py

.include <bsd.port.mk>
