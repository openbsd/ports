# $OpenBSD: Makefile,v 1.1.1.1 2018/02/14 20:24:24 rpointel Exp $

COMMENT =	easy to use python subprocess interface

MODPY_EGG_VERSION = 0.2.3
DISTNAME =	EasyProcess-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/ponty/EasyProcess

# BSD 2-clauses
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
