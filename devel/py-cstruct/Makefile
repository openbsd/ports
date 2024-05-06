COMMENT =	C-style structs for Python

MODPY_EGG_VERSION =	5.3

DISTNAME =	cstruct-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =	python3
FLAVOR =	python3

# XXX:
# Distribution lacks several files for the test to run (e.g. 'mbr').
NO_TEST =	Yes

.include <bsd.port.mk>
