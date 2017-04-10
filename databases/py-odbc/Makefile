# $OpenBSD: Makefile,v 1.16 2017/04/10 11:45:24 sthen Exp $

COMMENT =	ODBC bindings for Python

MODPY_EGG_VERSION=3.0.10
DISTNAME =	pyodbc-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/py/py-/}
REVISION =	0

CATEGORIES =	databases

HOMEPAGE =	https://github.com/mkleehammer/pyodbc

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += iodbc m pthread ${LIBCXX}

MODPY_PI =	Yes

MODPY_SETUPTOOLS = Yes
MODULES =	lang/python
LIB_DEPENDS =	databases/iodbc

CFLAGS +=	-fPIC -I${LOCALBASE}/include -L${LOCALBASE}/lib

NO_TEST =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
