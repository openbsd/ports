# $OpenBSD: Makefile,v 1.12 2019/11/22 16:39:23 sthen Exp $

COMMENT =		Python interface to MySQL

MODPY_EGG_VERSION =	1.4.6
# XXX beware if updating:
# XXX "mysqlclient 1.5 will not support Django 1.11.  It is not because
#      mysqlclient will break backward compatibility, but Django used
#      unsupported APIs and Django 1.11 don't fix bugs including
#      compatibility issues."
DISTNAME =		mysqlclient-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		databases

HOMEPAGE =		https://github.com/PyMySQL/mysqlclient-python/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} mariadb pthread

MASTER_SITES =		${MASTER_SITE_PYPI:=m/mysqlclient/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

LIB_DEPENDS =		databases/mariadb

# You must setup a default.cnf file config and
# a MySQL server
TEST_IS_INTERACTIVE =	Yes
TEST_DEPENDS =		databases/mariadb \
			devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
