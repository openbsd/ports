# $OpenBSD: Makefile,v 1.4 2021/10/29 15:38:47 sthen Exp $

COMMENT =		simple namespaced plugin facility

MODPY_EGG_VERSION =	1.5.0
DISTNAME =		straight.plugin-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		https://github.com/ironfroggy/straight.plugin

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =	python3

.if ! ${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.endif

.include <bsd.port.mk>
