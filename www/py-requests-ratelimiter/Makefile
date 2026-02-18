COMMENT=	rate-limiting for the requests library

MODPY_DISTV=	0.8.0

DISTNAME=	requests_ratelimiter-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}

CATEGORIES=	www

HOMEPAGE=	https://github.com/JWCook/requests-ratelimiter

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

RUN_DEPENDS=	devel/py-pyrate-limiter<3.0 \
		www/py-requests

TEST_DEPENDS=	www/py-requests-cache \
		www/py-requests-mock

MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

.include <bsd.port.mk>
