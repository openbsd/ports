# $OpenBSD: Makefile,v 1.8 2016/11/20 09:48:19 shadchin Exp $

COMMENT =		parse CSS3 Selectors and translates them to XPath 1.0

MODPY_EGG_VERSION =	1.0.0
PKGNAME =		py-${DISTNAME}

GH_ACCOUNT =		scrapy
GH_PROJECT =		cssselect
GH_TAGNAME =		v${MODPY_EGG_VERSION}

CATEGORIES =		textproc

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

TEST_DEPENDS =		textproc/py-lxml${MODPY_FLAVOR}

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
