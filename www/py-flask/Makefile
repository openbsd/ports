COMMENT=	microframework based on Werkzeug and Jinja 2

MODPY_DISTV=	3.1.0
DISTNAME=	flask-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	2

CATEGORIES=	www devel

# https://github.com/pallets/flask
HOMEPAGE=	https://flask.palletsprojects.com/

MAINTAINER =	Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-blinker \
		devel/py-click \
		www/py-itsdangerous \
		www/py-jinja2 \
		www/py-werkzeug

.include <bsd.port.mk>
