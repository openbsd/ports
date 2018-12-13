# $OpenBSD: Makefile,v 1.1.1.1 2018/12/13 21:38:33 jca Exp $

COMMENT =		better dates and times for Python

MODPY_EGG_VERSION =	0.12.1
DISTNAME =		arrow-${MODPY_EGG_VERSION}
PKGNAME =		py-arrow-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/crsmithdev/arrow/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-chai${MODPY_FLAVOR} \
			devel/py-simplejson${MODPY_FLAVOR}

FLAVORS +=		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-backports-functools-lru-cache
.endif

.include <bsd.port.mk>
