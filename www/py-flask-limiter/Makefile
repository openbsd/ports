COMMENT=	rate limiting for Flask applications

# XXX: flask-appbuilder needs < 4.0.0
MODPY_DISTV =	3.12
DISTNAME=	flask_limiter-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}

CATEGORIES=	www

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

RUN_DEPENDS =		databases/py-limits \
			devel/py-ordered-set<5 \
			devel/py-rich<15 \
			devel/py-typing-extensions \
			www/py-flask

# XXX: Needs hiro, flask_restful, pymemcache and more for tests

.include <bsd.port.mk>
