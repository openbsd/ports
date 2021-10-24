# $OpenBSD: Makefile,v 1.5 2021/10/24 09:28:53 sthen Exp $

COMMENT =		modern CSS selector implementation for Beautiful Soup

MODPY_EGG_VERSION =	1.9.5
DISTNAME =		soupsieve-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		www

HOMEPAGE =		https://github.com/facelessuser/soupsieve

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-html5lib${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR}

.include <bsd.port.mk>
