# $OpenBSD: Makefile,v 1.1.1.1 2019/12/03 04:30:25 bket Exp $

COMMENT =		functools like those found in stdlib

MODPY_EGG_VERSION =	2.0
DISTNAME =		jaraco.functools-${MODPY_EGG_VERSION}
PKGNAME =		py-jaraco-functools${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jaraco/jaraco.functools

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-more-itertools${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-backports-functools-lru-cache
.endif

NO_TEST =		Yes

.include <bsd.port.mk>
