COMMENT =	automagic shell tab completion for Python CLI applications

MODPY_DISTV =	1.8.0
DISTNAME =	shtab-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/iterative/shtab

MAINTAINER  =	Bjorn Ketelaars <bket@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools_scm

TEST_DEPENDS =	devel/py-test-cov \
		devel/py-test-timeout \
		shells/bash

.include <bsd.port.mk>
