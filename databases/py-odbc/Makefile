# $OpenBSD: Makefile,v 1.19 2018/10/24 14:27:59 sthen Exp $

COMMENT =	ODBC bindings for Python

MODPY_EGG_VERSION=3.0.10
DISTNAME =	pyodbc-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/py/py-/}
REVISION =	2

CATEGORIES =	databases

HOMEPAGE =	https://github.com/mkleehammer/pyodbc

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += iodbc m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODPY_PI =	Yes

MODPY_SETUPTOOLS = Yes
MODULES =	lang/python
LIB_DEPENDS =	databases/iodbc

CFLAGS +=	-fPIC -I${LOCALBASE}/include -L${LOCALBASE}/lib

NO_TEST =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
