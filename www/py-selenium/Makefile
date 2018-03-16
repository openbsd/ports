# $OpenBSD: Makefile,v 1.1.1.1 2018/03/16 08:38:37 rpointel Exp $

COMMENT =		Python bindings for Selenium WebDriver

MODPY_EGG_VERSION =	3.9.0
DISTNAME =		selenium-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
CATEGORIES =		www devel

HOMEPAGE =		http://www.seleniumhq.org/
MAINTAINER =		frantisek holop <minusf@obiit.org>

MODPY_PI =		Yes

FLAVORS =	python3
FLAVOR ?=

# Apache
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
