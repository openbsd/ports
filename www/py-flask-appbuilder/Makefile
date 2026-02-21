COMMENT=	rapid application development framework for Flask

MODPY_DISTV =	5.1.0
DISTNAME=	flask_appbuilder-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}

CATEGORIES=	www

MAINTAINER =	Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools
# XXX: needs mockldap, hiro, etc
MODPY_PYTEST_ARGS=	--ignore tests/security/test_auth_ldap.py \
			--ignore tests/security/test_auth_oauth.py \
			--ignore tests/security/test_mvc_security.py \
			--ignore tests/security/test_password_complexity.py \
			--ignore tests/security/test_rate_limiter.py \
			--ignore tests/test_addon.py \
			--ignore tests/test_api.py \
			--ignore tests/test_custom_indexview.py \
			--ignore tests/test_fab_cli.py \
			--ignore tests/test_menu.py \
			--ignore tests/test_mvc.py \
			--ignore tests/test_mvc_oauth.py \
			--ignore tests/test_security_api.py \
			--ignore tests/test_urltools.py

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

.include <bsd.port.mk>
