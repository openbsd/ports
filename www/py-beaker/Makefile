COMMENT=	session and caching library with wsgi middleware

MODPY_DISTV=	1.14.1
GH_ACCOUNT=	bbangert
GH_PROJECT=	beaker
GH_TAGNAME=	${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www devel

# https://github.com/bbangert/beaker
HOMEPAGE=	https://beaker.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	security/py-cryptodome

TEST_DEPENDS=	databases/py-sqlalchemy \
		databases/py-redis \
		devel/py-coverage \
		devel/py-mock \
		misc/py-memcached \
		security/py-cryptography \
		www/py-webtest

# needs a running memcached instance at 127.0.0.1:11211
TEST_IS_INTERACTIVE= Yes
MODPY_PYTEST_IGNORE= tests/test_managers/test_ext_mongodb.py \
		     tests/test_managers/test_ext_rediscluster.py

.include <bsd.port.mk>
