# $OpenBSD: Makefile,v 1.9 2021/10/24 09:28:53 sthen Exp $

COMMENT =	Python bindings for Selenium WebDriver

MODPY_EGG_VERSION =	3.14.1
DISTNAME =	selenium-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
CATEGORIES =	www devel
REVISION =	4

HOMEPAGE =	http://www.seleniumhq.org/

MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR =	python3

# Apache
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
