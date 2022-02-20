# $OpenBSD: Makefile,v 1.2 2022/02/20 15:05:11 bket Exp $

COMMENT =		cross-platform clipboard module for Python

MODPY_EGG_VERSION =	1.8.2

DISTNAME =		pyperclip-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		sysutils
HOMEPAGE =		https://github.com/asweigart/pyperclip

MAINTAINER =		Thim Cederlund <thim@cederlund.de>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		x11/xclip

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
