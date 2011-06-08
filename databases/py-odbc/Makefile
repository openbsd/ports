# $OpenBSD: Makefile,v 1.6 2011/06/08 17:33:59 jasper Exp $

SHARED_ONLY =	Yes

COMMENT =	ODBC bindings for Python

MODPY_EGG_VERSION=2.1.8
DISTNAME =	pyodbc-${MODPY_EGG_VERSION}
REVISION =		0
PKGNAME =	${DISTNAME:S/py/py-/}

CATEGORIES =	databases

HOMEPAGE =	http://pyodbc.googlecode.com/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += m stdc++

MASTER_SITES =	${HOMEPAGE}files/
EXTRACT_SUFX =	.zip

MODPY_SETUPTOOLS = Yes
MODULES =	lang/python
LIB_DEPENDS =	databases/iodbc
WANTLIB +=	iodbc

CFLAGS +=	-fPIC -I${LOCALBASE}/include -L${LOCALBASE}/lib

NO_REGRESS =	Yes

post-extract:
	chmod -R og-w ${WRKSRC}

.include <bsd.port.mk>
