# $OpenBSD: Makefile,v 1.13 2019/08/21 16:50:10 kmos Exp $

COMMENT =	HTML/XML parser that supports invalid markup

MODPY_EGG_VERSION =	4.7.1
DISTNAME =	beautifulsoup4-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

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
