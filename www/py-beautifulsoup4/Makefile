COMMENT =	HTML/XML parser that supports invalid markup

MODPY_EGG_VERSION =	4.11.1
DISTNAME =	beautifulsoup4-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	www

HOMEPAGE =	https://www.crummy.com/software/BeautifulSoup/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes
MODPY_PYTEST_ARGS =	bs4

RUN_DEPENDS =	www/py-soupsieve${MODPY_FLAVOR}

.include <bsd.port.mk>
