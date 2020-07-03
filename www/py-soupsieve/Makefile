# $OpenBSD: Makefile,v 1.3 2020/07/03 21:13:20 sthen Exp $

COMMENT =		modern CSS selector implementation for Beautiful Soup

MODPY_EGG_VERSION =	1.9.5
DISTNAME =		soupsieve-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/facelessuser/soupsieve

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-html5lib${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-backports-functools-lru-cache
.endif

.include <bsd.port.mk>
