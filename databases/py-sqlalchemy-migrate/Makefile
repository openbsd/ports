# $OpenBSD: Makefile,v 1.16 2020/11/13 22:41:14 sthen Exp $

COMMENT =		schema migration tools for SQLAlchemy

MODPY_EGG_VERSION =	0.13.0
DISTNAME =		sqlalchemy-migrate-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		databases

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

BUILD_DEPENDS =		devel/py-pbr${MODPY_FLAVOR}

RUN_DEPENDS =		databases/py-sqlalchemy${MODPY_FLAVOR} \
			databases/py-sqlparse${MODPY_FLAVOR} \
			devel/py-pbr${MODPY_FLAVOR} \
			devel/py-decorator${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			www/py-tempita${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

# test needs unported tempest, py-cfgparse & py-scripttest
NO_TEST =		Yes

.include <bsd.port.mk>
