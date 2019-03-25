# $OpenBSD: Makefile,v 1.29 2019/03/25 14:29:50 kn Exp $

COMMENT =		Python API for advanced date calculations

MODPY_EGG_VERSION =	2.8.0
DISTNAME =		python-dateutil-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^python-/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://dateutil.readthedocs.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-freezegun${MODPY_FLAVOR} \
			devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
