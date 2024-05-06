COMMENT=	ODBC bindings for Python

MODPY_EGG_VERSION= 5.1.0
DISTNAME=	pyodbc-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	0

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

CFLAGS+=	-fPIC -I${LOCALBASE}/include -Wno-deprecated-register
MAKE_ENV=	LDFLAGS=-L${LOCALBASE}/lib

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
