COMMENT=	compress Flask app responses

MODPY_DISTV=	1.25
DISTNAME=	flask_compress-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}

CATEGORIES=	www

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

RUN_DEPENDS=	archivers/py-brotli \
		www/py-flask

TEST_DEPENDS =	www/py-flask-caching

.include <bsd.port.mk>
