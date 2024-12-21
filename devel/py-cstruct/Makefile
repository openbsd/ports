COMMENT =	C-style structs for Python

MODPY_DISTV =	5.3

DISTNAME =	cstruct-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# XXX:
# Distribution lacks several files for the test to run (e.g. 'mbr').
NO_TEST =	Yes

.include <bsd.port.mk>
