# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:37 sthen Exp $

COMMENT =		fixture for benchmarking code

MODPY_EGG_VERSION =	3.0.0
DISTNAME =		pytest-benchmark-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		https://pytest-benchmark.readthedocs.org/en/stable/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_SUFX =		.zip

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}
TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH}

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		math/py-statistics
.endif

.include <bsd.port.mk>
