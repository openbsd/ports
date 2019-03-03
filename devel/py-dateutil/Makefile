# $OpenBSD: Makefile,v 1.28 2019/03/03 08:28:31 kn Exp $

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

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-freezegun${MODPY_FLAVOR} \
			devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

TEST_ENV +=		LC_CTYPE=C.UTF-8

do-test:
	cd ${WRKSRC} && exec ${SETENV} ${MAKE_ENV} ${TEST_ENV} \
		 ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
