# $OpenBSD: Makefile,v 1.18 2019/03/25 14:29:51 kn Exp $

COMMENT =	Python 2 and 3 compatibility library
MODPY_EGG_VERSION =	1.12.0
DISTNAME =	six-${MODPY_EGG_VERSION}
PKGNAME =	py-six-${MODPY_EGG_VERSION}
CATEGORIES =	devel

HOMEPAGE =	http://pythonhosted.org/six/

MAINTAINER =	Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	-v

TEST_DEPENDS =	devel/py-py${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
