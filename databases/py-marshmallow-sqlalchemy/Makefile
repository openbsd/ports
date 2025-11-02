COMMENT=		SQLAlchemy integration with marshmallow library

MODPY_DISTV =		1.4.2
DISTNAME =		marshmallow_sqlalchemy-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}

CATEGORIES =		databases

HOMEPAGE =		https://marshmallow-sqlalchemy.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		databases/py-sqlalchemy<3.0 \
			devel/py-marshmallow

NO_TEST =		Yes

.include <bsd.port.mk>
