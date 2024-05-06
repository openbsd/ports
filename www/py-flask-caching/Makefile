COMMENT=	easy cache support for Flask

MODPY_EGG_VERSION=2.1.0
DISTNAME=	Flask-Caching-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	www
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>
REVISION=	0

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

FLAVORS=		python3
FLAVOR=			python3

RUN_DEPENDS=		devel/py-cachelib${MODPY_FLAVOR} \
			www/py-flask${MODPY_FLAVOR}

# 3 failures caused due to missing ports: asgiref (Flask async extra), pylibmc
TEST_DEPENDS=		databases/py-redis${MODPY_FLAVOR} \
			misc/py-memcached${MODPY_FLAVOR}

.include <bsd.port.mk>
