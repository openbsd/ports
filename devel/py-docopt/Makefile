# $OpenBSD: Makefile,v 1.4 2017/08/08 22:10:17 jasper Exp $

COMMENT =	Pythonic argument parser

MODPY_EGG_VERSION = 0.6.2
DISTNAME =	docopt-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>
REVISION =	1

HOMEPAGE =	http://docopt.org

# MIT
PERMIT_PACKAGE_CDROM =  Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
