COMMENT=	compress Flask app responses

# XXX: superset (not yet imported) needs < 2
MODPY_DISTV =	1.23
DISTNAME=	flask_compress-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}

CATEGORIES=	www

MAINTAINER =	Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools_scm

RUN_DEPENDS =		archivers/py-backports-zstd \
			archivers/py-brotli \
			www/py-flask

TEST_DEPENDS =		www/py-flask-caching

.include <bsd.port.mk>
