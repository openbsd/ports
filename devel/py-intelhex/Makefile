# $OpenBSD: Makefile,v 1.1.1.1 2021/12/21 11:10:38 gonzalo Exp $

COMMENT =		intel hex file format is used in microprocessors

MODPY_EGG_VERSION =	2.3.0
DISTNAME =		intelhex-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/python-intelhex/intelhex

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
