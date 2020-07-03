# $OpenBSD: Makefile,v 1.15 2020/07/03 21:12:37 sthen Exp $

COMMENT =		schema migration tools for SQLAlchemy

MODPY_EGG_VERSION =	0.13.0
DISTNAME =		sqlalchemy-migrate-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
FLAVOR ?=

# test needs unported tempest, py-cfgparse & py-scripttest
NO_TEST =		Yes

post-install:
	mv ${PREFIX}/bin/migrate \
		${PREFIX}/bin/migrate${MODPY_BIN_SUFFIX}
	mv ${PREFIX}/bin/migrate-repository \
		${PREFIX}/bin/migrate-repository${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
