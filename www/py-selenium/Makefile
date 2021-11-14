# $OpenBSD: Makefile,v 1.11 2021/11/14 11:36:37 sthen Exp $

COMMENT =	Python bindings for Selenium WebDriver

MODPY_EGG_VERSION =	3.141.0
DISTNAME =	selenium-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
CATEGORIES =	www devel

HOMEPAGE =	https://www.selenium.dev/

MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR =	python3

# Apache
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

.include <bsd.port.mk>
