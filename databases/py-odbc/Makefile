# $OpenBSD: Makefile,v 1.24 2020/06/12 12:44:33 sthen Exp $

COMMENT =	ODBC bindings for Python

MODPY_EGG_VERSION = 4.0.30
DISTNAME =	pyodbc-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/py/py-/}

CATEGORIES =	databases

HOMEPAGE =	https://github.com/mkleehammer/pyodbc

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += iodbc m pthread

COMPILER =	base-clang ports-gcc

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

NO_TEST =	Yes

LIB_DEPENDS =	databases/iodbc

CFLAGS +=	-fPIC -I${LOCALBASE}/include -L${LOCALBASE}/lib -Wno-deprecated-register

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
