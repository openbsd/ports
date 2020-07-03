# $OpenBSD: Makefile,v 1.11 2020/07/03 21:12:52 sthen Exp $

COMMENT =		Python module for decorators, wrappers and monkey patching

MODPY_EGG_VERSION =	1.10.10
DISTNAME =		wrapt-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		2

GH_ACCOUNT =		GrahamDumpleton
GH_PROJECT =		wrapt
GH_TAGNAME =		${MODPY_EGG_VERSION}

HOMEPAGE =		https://wrapt.readthedocs.org/en/latest/

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

WANTLIB += pthread ${MODPY_WANTLIB}

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

TEST_ENV +=		PYTHONPATH=${WRKSRC}/src

.include <bsd.port.mk>
