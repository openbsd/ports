COMMENT=	MySQL driver in pure Python

MODPY_DISTV=	1.1.0

DISTNAME=	PyMySQL-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:L}
REVISION=	2

CATEGORIES=	databases

HOMEPAGE=	https://github.com/PyMySQL/PyMySQL/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# only tests specific newer auth methods, one of which we don't have deps
# for, and doesn't seem to fit the mariadb.port.mk framework too well
NO_TEST=	Yes

.include <bsd.port.mk>
