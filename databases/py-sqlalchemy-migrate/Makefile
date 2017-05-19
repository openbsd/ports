# $OpenBSD: Makefile,v 1.8 2017/05/19 04:50:12 benoit Exp $

COMMENT =		schema migration tools for SQLAlchemy

MODPY_EGG_VERSION =	0.11.0
DISTNAME =		sqlalchemy-migrate-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		databases

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

BUILD_DEPENDS =		devel/py-pbr

RUN_DEPENDS =		databases/py-sqlalchemy \
			databases/py-sqlparse \
			devel/py-pbr \
			devel/py-decorator \
			devel/py-six \
			www/py-tempita

# test needs unported tempest, py-cfgparse & py-scripttest
NO_TEST =		Yes

.include <bsd.port.mk>
