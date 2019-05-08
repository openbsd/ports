# $OpenBSD: Makefile,v 1.6 2019/05/08 13:49:47 danj Exp $

COMMENT =	Pythonic argument parser

MODPY_EGG_VERSION = 0.6.2
DISTNAME =	docopt-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
REVISION =	3

HOMEPAGE =	http://docopt.org

# MIT
PERMIT_PACKAGE_CDROM =  Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
