COMMENT =	Python bindings for libknot

MODPY_DISTV =	3.4.5

DISTNAME =	libknot-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	net

HOMEPAGE =	https://gitlab.nic.cz/knot/knot-dns

MAINTAINER =	Aisha Tammy <aisha@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		net/knot=${MODPY_DISTV}

NO_TEST =		Yes

.include <bsd.port.mk>
