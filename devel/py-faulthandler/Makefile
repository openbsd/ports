# $OpenBSD: Makefile,v 1.3 2021/02/23 19:39:18 sthen Exp $

COMMENT =	display the Python traceback on a crash

MODPY_EGG_VERSION =	3.0
DISTNAME =	faulthandler-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://faulthandler.readthedocs.io/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

# Not needed for py3.
MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

LIB_DEPENDS =		${MODPY_LIB_DEPENDS}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
