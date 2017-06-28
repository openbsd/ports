# $OpenBSD: Makefile,v 1.1.1.1 2017/06/28 18:00:36 shadchin Exp $

COMMENT =		py.test plugin to store test expectations

MODPY_EGG_VERSION =	1.1.0
DISTNAME =		pytest-expect-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/gsnedders/pytest-expect

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			net/py-msgpack${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
