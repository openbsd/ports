# $OpenBSD: Makefile,v 1.1.1.1 2009/07/31 10:21:04 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	ODBC bindings for Python

MODPY_EGG_VERSION=2.1.6
DISTNAME =	pyodbc-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/py/py-/}

CATEGORIES =	databases

HOMEPAGE =	http://pyodbc.googlecode.com/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}files/
EXTRACT_SUFX =	.zip

MODULES =	lang/python
LIB_DEPENDS =	iodbc::databases/iodbc

CFLAGS +=	-fPIC -I${LOCALBASE}/include -L${LOCALBASE}/lib

NO_REGRESS =	Yes

.include <bsd.port.mk>
