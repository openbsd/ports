COMMENT=	ODBC bindings for Python

MODPY_DISTV=	5.2.0
DISTNAME=	pyodbc-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	1

CATEGORIES=	databases

HOMEPAGE=	https://github.com/mkleehammer/pyodbc

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} iodbc m pthread

COMPILER=	base-clang ports-gcc

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

NO_TEST=	Yes

LIB_DEPENDS=	databases/iodbc

MAKE_ENV=	CPPFLAGS=-I${LOCALBASE}/include \
		LDFLAGS=-L${LOCALBASE}/lib

.include <bsd.port.mk>
