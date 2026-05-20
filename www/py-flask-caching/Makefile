COMMENT=	easy cache support for Flask

MODPY_DISTV=	2.4.0
DISTNAME=	flask_caching-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}
CATEGORIES=	www
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD=		flit_core

RUN_DEPENDS=		devel/py-cachelib \
			www/py-flask

TEST_DEPENDS=		databases/py-redis \
			devel/py-test-cov \
			devel/py-test-asyncio \
			devel/py-test-xprocess \
			misc/py-memcached \
			www/py-asgiref

.include <bsd.port.mk>
