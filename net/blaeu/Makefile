COMMENT =	create measurements on RIPE Atlas probes

MODPY_DISTV =	2.0.0
DISTNAME =	blaeu-${MODPY_DISTV}
CATEGORIES =	net
REVISION =	1

MAINTAINER =	Denis Fondras <denis@openbsd.org>

HOMEPAGE =	https://framagit.org/bortzmeyer/blaeu

# 2-clause BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
NO_TEST =		Yes

RUN_DEPENDS =		net/py-dnspython \
			net/py-cymruwhois \
			security/py-openssl

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
