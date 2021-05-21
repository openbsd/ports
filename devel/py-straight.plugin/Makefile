# $OpenBSD: Makefile,v 1.3 2021/05/21 19:50:29 kmos Exp $

COMMENT =		simple namespaced plugin facility

MODPY_EGG_VERSION =	1.5.0
DISTNAME =		straight.plugin-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/ironfroggy/straight.plugin

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.if ! ${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.endif

.include <bsd.port.mk>
