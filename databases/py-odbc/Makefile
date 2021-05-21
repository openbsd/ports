# $OpenBSD: Makefile,v 1.27 2021/05/21 19:50:22 kmos Exp $

COMMENT =	ODBC bindings for Python

MODPY_EGG_VERSION = 4.0.30
DISTNAME =	pyodbc-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/py/py-/}
REVISION =	2

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
