COMMENT=	ODBC bindings for Python

MODPY_EGG_VERSION= 4.0.39
DISTNAME=	pyodbc-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}

CATEGORIES=	databases

HOMEPAGE=	https://github.com/mkleehammer/pyodbc

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += iodbc m pthread

COMPILER=	base-clang ports-gcc

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

NO_TEST=	Yes

LIB_DEPENDS=	databases/iodbc

CFLAGS+=	-fPIC -I${LOCALBASE}/include -L${LOCALBASE}/lib -Wno-deprecated-register

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
