# $OpenBSD: Makefile,v 1.6 2019/07/12 20:45:53 sthen Exp $

MODPY_EGG_VERSION =	3.4.0.3
COMMENT =	backport of functools.singledispatch to Python 2.6-3.3
DISTNAME =	singledispatch-${MODPY_EGG_VERSION}
PKGNAME =	py-singledispatch-${MODPY_EGG_VERSION}
CATEGORIES =	devel
REVISION =	1


# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =	devel/py-six

.include <bsd.port.mk>
