# $OpenBSD: Makefile,v 1.14 2020/07/03 21:13:13 sthen Exp $

COMMENT =		parse CSS3 Selectors and translates them to XPath 1.0

MODPY_EGG_VERSION =	1.0.0
PKGNAME =		py-${DISTNAME}
REVISION =		3

GH_ACCOUNT =		scrapy
GH_PROJECT =		cssselect
GH_TAGNAME =		v${MODPY_EGG_VERSION}

CATEGORIES =		textproc

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

TEST_DEPENDS =		textproc/py-lxml${MODPY_FLAVOR}

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
