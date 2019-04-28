# $OpenBSD: Makefile,v 1.8 2019/04/28 20:51:36 sthen Exp $

COMMENT =		refactoring library

MODPY_EGG_VERSION =	0.12.0
DISTNAME =		rope-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/python-rope/rope

MAINTAINER =		Elias M. Mariani <marianielias@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-unittest2
.endif

.include <bsd.port.mk>
