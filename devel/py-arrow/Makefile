# $OpenBSD: Makefile,v 1.7 2019/09/09 19:23:48 kmos Exp $

COMMENT =		better dates and times for Python

MODPY_EGG_VERSION =	0.14.7
DISTNAME =		arrow-${MODPY_EGG_VERSION}
PKGNAME =		py-arrow-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/crsmithdev/arrow/

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-chai${MODPY_FLAVOR} \
			devel/py-simplejson${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR}

FLAVORS +=		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-backports-functools-lru-cache
.endif

.include <bsd.port.mk>
