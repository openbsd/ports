COMMENT =	Python bindings for libknot

MODPY_DISTV =	3.3.9

DISTNAME =	libknot-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	net

HOMEPAGE =	https://gitlab.nic.cz/knot/knot-dns

MAINTAINER =	Aisha Tammy <aisha@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		net/knot=${MODPY_DISTV}

.include <bsd.port.mk>
