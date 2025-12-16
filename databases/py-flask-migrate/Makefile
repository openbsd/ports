COMMENT =		SQLAlchemy migrations for Flask apps using alembic

# XXX: superset (not yet imported) needs < 4
MODPY_DISTV =		3.1.0
DISTNAME =		Flask-Migrate-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		databases

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		databases/py-alembic \
			databases/py-flask-sqlalchemy \
			www/py-flask<4.0

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH}

.include <bsd.port.mk>
