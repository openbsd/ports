# $OpenBSD: Makefile,v 1.9 2019/03/25 14:29:51 kn Exp $

COMMENT =		thin-wrapper around mock package for easier use with pytest

MODPY_EGG_VERSION =	1.6.0
DISTNAME =		pytest-mock-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/pytest-dev/pytest-mock/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}
TEST_DEPENDS =		${BASE_PKGPATH}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

# One test fail if py3-mock installed
.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-mock
.endif

.include <bsd.port.mk>
