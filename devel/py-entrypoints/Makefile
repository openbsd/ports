# $OpenBSD: Makefile,v 1.9 2020/07/03 21:12:44 sthen Exp $

COMMENT =		discover and load entry points from installed packages

MODPY_EGG_VERSION =	0.3
DISTNAME =		entrypoints-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://github.com/takluyver/entrypoints

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-configparser
.endif

.include <bsd.port.mk>
