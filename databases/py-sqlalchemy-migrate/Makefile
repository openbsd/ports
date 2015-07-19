# $OpenBSD: Makefile,v 1.4 2015/07/19 19:23:26 landry Exp $

COMMENT =		schema migration tools for SQLAlchemy

MODPY_EGG_VERSION =	0.7.2
DISTNAME =		sqlalchemy-migrate-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		databases

HOMEPAGE =		https://code.google.com/p/sqlalchemy-migrate/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://sqlalchemy-migrate.googlecode.com/files/

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		databases/py-sqlalchemy \
			devel/py-decorator \
			www/py-tempita

# test needs unported py-cfgparse & py-scripttest
NO_TEST =		Yes

.include <bsd.port.mk>
