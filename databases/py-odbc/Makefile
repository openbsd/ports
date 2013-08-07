# $OpenBSD: Makefile,v 1.10 2013/08/07 21:31:24 naddy Exp $

SHARED_ONLY =	Yes

COMMENT =	ODBC bindings for Python

MODPY_EGG_VERSION=2.1.8
DISTNAME =	pyodbc-${MODPY_EGG_VERSION}
REVISION =	3
PKGNAME =	${DISTNAME:S/py/py-/}

CATEGORIES =	databases

HOMEPAGE =	https://pyodbc.googlecode.com/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m stdc++ ${MODPY_WANTLIB}

MASTER_SITES =	${HOMEPAGE}files/
EXTRACT_SUFX =	.zip

MODPY_SETUPTOOLS = Yes
MODULES =	lang/python
LIB_DEPENDS =	databases/iodbc
WANTLIB +=	iodbc

CFLAGS +=	-fPIC -I${LOCALBASE}/include -L${LOCALBASE}/lib

NO_TEST =	Yes

post-extract:
	chmod -R og-w ${WRKSRC}

.include <bsd.port.mk>
