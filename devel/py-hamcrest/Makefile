# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:33 sthen Exp $

COMMENT =		Hamcrest matchers for Python

MODPY_EGG_VERSION =	1.9.0
DISTNAME =		PyHamcrest-${MODPY_EGG_VERSION}
PKGNAME =		py-hamcrest-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://hamcrest.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
