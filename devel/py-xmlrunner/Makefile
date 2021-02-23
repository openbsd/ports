# $OpenBSD: Makefile,v 1.10 2021/02/23 19:39:20 sthen Exp $

COMMENT =		test runner with JUnit like XML reporting

MODPY_EGG_VERSION =	1.4.3
DISTNAME =		unittest-xml-reporting-${MODPY_EGG_VERSION}
PKGNAME =		py-xmlrunner-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		devel

# LGPL2.1
PERMIT_PACKAGE =		Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

.include <bsd.port.mk>
