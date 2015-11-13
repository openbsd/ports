# $OpenBSD: Makefile,v 1.5 2015/11/13 08:51:08 ajacoutot Exp $

COMMENT =		Python interface to MySQL

MODPY_EGG_VERSION =	1.3.7
DISTNAME =		mysqlclient-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		databases

HOMEPAGE =		https://github.com/PyMySQL/mysqlclient-python/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto m pthread ssl z
WANTLIB += lib/mysql/mysqlclient_r
WANTLIB += ${MODPY_WANTLIB}

MASTER_SITES =		${MASTER_SITE_PYPI:=m/mysqlclient/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR?=

LIB_DEPENDS = 		databases/mariadb

TEST_DEPENDS =		devel/py-nose,${FLAVOR} \
			databases/mariadb

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.endif

# You must setup a default.cnf file config and
# a MySQL server
TEST_IS_INTERACTIVE =		Yes

.include <bsd.port.mk>
