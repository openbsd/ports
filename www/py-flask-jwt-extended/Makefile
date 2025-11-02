COMMENT =		JSON Web Token support for Flask

MODPY_DISTV =		4.7.1
DISTNAME =		flask_jwt_extended-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/g}

CATEGORIES =		www

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		www/py-flask<4.0 \
			www/py-jwt<3.0 \
			www/py-werkzeug

.include <bsd.port.mk>
