# $OpenBSD: Makefile,v 1.6 2020/06/12 04:43:27 kn Exp $

COMMENT =		Python bindings for Selenium WebDriver

MODPY_EGG_VERSION =	3.14.1
DISTNAME =		selenium-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
CATEGORIES =		www devel
REVISION =		1

HOMEPAGE =		http://www.seleniumhq.org/

MODPY_PI =		Yes

FLAVORS =	python3
FLAVOR ?=

# Apache
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
