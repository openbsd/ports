# $OpenBSD: Makefile,v 1.11 2021/05/21 19:50:31 kmos Exp $

COMMENT =		test runner with JUnit like XML reporting

MODPY_EGG_VERSION =	1.4.3
DISTNAME =		unittest-xml-reporting-${MODPY_EGG_VERSION}
PKGNAME =		py-xmlrunner-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		devel

# LGPL2.1
PERMIT_PACKAGE =		Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

.include <bsd.port.mk>
