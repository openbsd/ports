# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:49 sthen Exp $

COMMENT =		implementation of the Happy Eyeballs Algorithm

MODPY_EGG_VERSION =	0.0.0

DISTNAME =		rfc6555-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://www.github.com/SethMichaelLarson/rfc6555

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

# tests connect to www.google.com on port 80
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS =		devel/py-selectors2
TEST_DEPENDS =		devel/py-mock
.endif


.include <bsd.port.mk>
