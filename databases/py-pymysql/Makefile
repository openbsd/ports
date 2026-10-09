COMMENT=	MySQL driver in pure Python

MODPY_DISTV=	1.2.3
DISTNAME=	pymysql-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	databases

HOMEPAGE=	https://github.com/PyMySQL/PyMySQL/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# only tests specific newer auth methods, and doesn't fit the
# mariadb.port.mk framework well
NO_TEST=	Yes

.include <bsd.port.mk>
