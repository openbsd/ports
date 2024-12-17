COMMENT =	pipe interface for radare2

MODPY_EGG_VERSION =	1.8.8
DISTNAME =	r2pipe-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

HOMEPAGE =	https://radare.org/n/r2pipe.html

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
# tests fail unless you add missing files from
# https://github.com/radareorg/radare2-r2pipe/tree/master/python/test
TEST_DEPENDS =		devel/radare2/main

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
