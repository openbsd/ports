COMMENT =	platform agnostic command and shell execution tool

MODPY_EGG_VERSION =	1.4.0

GH_ACCOUNT =	netinvent
GH_PROJECT =	command_runner
GH_TAGNAME =	v${MODPY_EGG_VERSION}

DISTNAME =	command_runner-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/netinvent/command_runner

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

# exists on PyPI but has no tests
#MODPY_PI =	Yes

MODPY_PYBUILD =	setuptools
MODPY_PYTEST =	Yes

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
