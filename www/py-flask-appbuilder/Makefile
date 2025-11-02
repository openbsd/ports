COMMENT=	rapid application development framework for Flask

MODPY_DISTV =	5.0.1
DISTNAME=	Flask-AppBuilder-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:L}

CATEGORIES=	www

MAINTAINER =	Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

RUN_DEPENDS =	databases/py-flask-sqlalchemy>=2.4.0,<4 \
		databases/py-marshmallow-sqlalchemy>=0.22.0,<3.0.0 \
		databases/py-sqlalchemy>=1.4.0,<3 \
		databases/py-sqlalchemy-utils>=0.32.21,<1 \
		devel/py-apispec>=6.0.0,<7 \
		devel/py-colorama>=0.3.9,<1 \
		devel/py-dateutil>=2.3,<3 \
		devel/py-click>=8,<9 \
		devel/py-jsonschema>=3,<5 \
		devel/py-marshmallow>=3.18.0,<5 \
		devel/py-prison>=0.2.1,<1.0.0 \
		mail/py-email-validator>=1.0.5 \
		www/py-flask>=2,<4 \
		www/py-flask-babel>=3,<5 \
		www/py-flask-limiter>=3,<4 \
		www/py-flask-login>=0.3,<0.7 \
		www/py-flask-wtf>=0.14.2,<2 \
		www/py-flask-jwt-extended>=4.0.0,<5.0.0 \
		www/py-jwt>=2.0.0,<3.0.0 \
		www/py-wtforms<4 \
		www/py-werkzeug<4v0

# XXX: needs mockldap, hiro
#TEST_DEPENDS =	devel/py-nose

.include <bsd.port.mk>
