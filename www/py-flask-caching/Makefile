COMMENT=	easy cache support for Flask

MODPY_DISTV=2.1.0
DISTNAME=	Flask-Caching-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	www
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>
REVISION=	1

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
