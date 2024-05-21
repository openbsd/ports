COMMENT =		framework for managing git pre-commit hooks

MODPY_EGG_VERSION =	3.7.1
DISTNAME =		pre_commit-${MODPY_EGG_VERSION}
PKGNAME =		pre-commit-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://pre-commit.com/

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVOR =		python3
FLAVORS =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/git \
			devel/py-cfgv${MODPY_FLAVOR} \
			devel/py-identify${MODPY_FLAVOR} \
			devel/py-nodeenv${MODPY_FLAVOR} \
			devel/py-virtualenv${MODPY_FLAVOR} \
			shells/bash \
			textproc/py-yaml${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
