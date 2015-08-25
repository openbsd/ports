# $OpenBSD: Makefile,v 1.3 2015/08/25 13:18:25 sthen Exp $

MODPY_EGG_VERSION =	3.4.0.3
COMMENT =	backport of functools.singledispatch to Python 2.6-3.3
DISTNAME =	singledispatch-${MODPY_EGG_VERSION}
PKGNAME =	py-singledispatch-${MODPY_EGG_VERSION}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	https://pypi.python.org/pypi/singledispatch

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =	devel/py-six

.include <bsd.port.mk>
