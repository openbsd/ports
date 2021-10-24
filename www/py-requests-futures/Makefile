# $OpenBSD: Makefile,v 1.6 2021/10/24 09:28:53 sthen Exp $

COMMENT =		small addon for python-requests HTTP library

MODPY_EGG_VERSION =	0.9.7
DISTNAME =		requests-futures-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		www

HOMEPAGE =		https://github.com/ross/requests-futures

# APLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS +=		www/py-requests${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test_requests_futures.py

.include <bsd.port.mk>
