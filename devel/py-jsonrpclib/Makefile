# $OpenBSD: Makefile,v 1.1.1.1 2012/10/30 20:46:18 martynas Exp $

COMMENT =		json-rpc over http

MODPY_EGG_VERSION =	0.1.3
DISTNAME =		jsonrpclib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://pypi.python.org/pypi/jsonrpclib/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=j/jsonrpclib/}

MODULES =		lang/python

NO_REGRESS =		Yes

.include <bsd.port.mk>
