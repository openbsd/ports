# $OpenBSD: Makefile,v 1.9 2021/05/21 19:50:25 kmos Exp $

COMMENT =	Pythonic argument parser

MODPY_EGG_VERSION = 0.6.2
DISTNAME =	docopt-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
REVISION =	5

HOMEPAGE =	http://docopt.org

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
