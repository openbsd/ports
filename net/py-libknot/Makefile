COMMENT =	Python bindings for libknot

MODPY_EGG_VERSION =	3.3.7

DISTNAME =	libknot-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	net

HOMEPAGE =	https://gitlab.nic.cz/knot/knot-dns

MAINTAINER =	Aisha Tammy <aisha@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		net/knot=${MODPY_EGG_VERSION}

.include <bsd.port.mk>
