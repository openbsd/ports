# $OpenBSD: Makefile,v 1.4 2020/07/03 21:12:45 sthen Exp $

COMMENT =		Hamcrest matchers for Python

MODPY_EGG_VERSION =	1.9.0
DISTNAME =		PyHamcrest-${MODPY_EGG_VERSION}
PKGNAME =		py-hamcrest-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		http://hamcrest.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
