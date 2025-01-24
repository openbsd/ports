COMMENT =		framework for managing git pre-commit hooks

MODPY_DISTV =		4.1.0
DISTNAME =		pre_commit-${MODPY_DISTV}
PKGNAME =		pre-commit-${MODPY_DISTV}

CATEGORIES =		devel

HOMEPAGE =		https://pre-commit.com/

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/git \
			devel/py-cfgv \
			devel/py-identify \
			devel/py-nodeenv \
			devel/py-virtualenv \
			shells/bash \
			textproc/py-yaml

NO_TEST =		Yes

.include <bsd.port.mk>
