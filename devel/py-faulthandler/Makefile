# $OpenBSD: Makefile,v 1.1.1.1 2017/11/14 20:31:35 sthen Exp $

COMMENT =	display the Python traceback on a crash

MODPY_EGG_VERSION =	3.0
DISTNAME =	faulthandler-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://faulthandler.readthedocs.io/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

# Not needed for py3.
MODULES =		lang/python

LIB_DEPENDS =		${MODPY_LIB_DEPENDS}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
