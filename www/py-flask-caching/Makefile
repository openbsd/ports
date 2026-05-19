COMMENT=	easy cache support for Flask

MODPY_DISTV=2.4.0
DISTNAME=	flask_caching-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}
CATEGORIES=	www
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		devel/py-cachelib \
			www/py-flask

# 3 failures caused due to missing ports: asgiref (Flask async extra), pylibmc
TEST_DEPENDS=		databases/py-redis \
			misc/py-memcached

.include <bsd.port.mk>
