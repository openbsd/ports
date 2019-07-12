# $OpenBSD: Makefile,v 1.5 2019/07/12 20:51:03 sthen Exp $

COMMENT =		Python bindings for Selenium WebDriver

MODPY_EGG_VERSION =	3.14.1
DISTNAME =		selenium-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
CATEGORIES =		www devel
REVISION =		0

HOMEPAGE =		http://www.seleniumhq.org/
MAINTAINER =		frantisek holop <minusf@obiit.org>

MODPY_PI =		Yes

FLAVORS =	python3
FLAVOR ?=

# Apache
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
