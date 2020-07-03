# $OpenBSD: Makefile,v 1.16 2020/07/03 21:13:18 sthen Exp $

COMMENT =	HTML/XML parser that supports invalid markup

MODPY_EGG_VERSION =	4.8.1
DISTNAME =	beautifulsoup4-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	www

HOMEPAGE =	https://www.crummy.com/software/BeautifulSoup/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	lib/bs4

RUN_DEPENDS =	www/py-soupsieve${MODPY_FLAVOR}
TEST_DEPENDS =	devel/py-html5lib${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
