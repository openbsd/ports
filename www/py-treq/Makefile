# $OpenBSD: Makefile,v 1.1.1.1 2020/03/08 16:48:54 landry Exp $

COMMENT =		HTTP library inspired by requests on top of Twisted Agents

MODPY_EGG_VERSION =	18.6.0
DISTNAME =		treq-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/twisted/treq

MAINTAINER =		Renaud Allard <renaud@allard.it>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_SETUPTOOLS =	Yes
FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-incremental${MODPY_FLAVOR}
RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR} \
			devel/py-twisted${MODPY_FLAVOR} \
			devel/py-incremental${MODPY_FLAVOR} \
			devel/py-attrs${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		www/py-httpbin${MODPY_FLAVOR}

.include <bsd.port.mk>
