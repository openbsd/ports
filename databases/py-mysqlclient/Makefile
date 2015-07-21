# $OpenBSD: Makefile,v 1.1.1.1 2015/07/21 14:48:39 rpointel Exp $

COMMENT =		Python interface to MySQL

MODPY_EGG_VERSION =	1.3.6
DISTNAME =		mysqlclient-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		databases

HOMEPAGE =		https://github.com/PyMySQL/mysqlclient-python/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto m pthread ssl z
WANTLIB += lib/mysql/mysqlclient_r


MASTER_SITES =		${MASTER_SITE_PYPI:=m/mysqlclient/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
FLAVORS ?=		python3

BUILD_DEPENDS =		databases/mariadb
LIB_DEPENDS = 		databases/mariadb

TEST_DEPENDS =		devel/py-nose,${FLAVOR} \
			databases/mariadb

# You must setup a default.cnf file config and
# a MySQL server
TEST_IS_INTERACTIVE =		Yes

.include <bsd.port.mk>
