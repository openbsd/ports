# $OpenBSD: Makefile,v 1.1.1.1 2012/01/10 17:50:23 espie Exp $

COMMENT =		schema migration tools for SQLAlchemy

MODPY_EGG_VERSION =	0.7.1
DISTNAME =		sqlalchemy-migrate-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		databases

HOMEPAGE =		http://code.google.com/p/sqlalchemy-migrate/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://sqlalchemy-migrate.googlecode.com/files/

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		databases/py-sqlalchemy \
			devel/py-decorator \
			www/py-tempita

# regress needs unported py-cfgparse & py-scripttest
NO_REGRESS =		Yes

.include <bsd.port.mk>
