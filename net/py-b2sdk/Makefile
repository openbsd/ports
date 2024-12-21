COMMENT =		client lib to access B2 cloud storage

MODPY_DISTV =	2.5.1
DISTNAME =		b2sdk-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel net
REVISION =		0

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		pdm

# Tests require a Backblaze account and network connectivity
NO_TEST =		Yes

BUILD_DEPENDS =		devel/py-annotated_types

RUN_DEPENDS =		devel/py-annotated_types \
			devel/py-arrow \
			devel/py-logfury \
			www/py-requests \
			devel/py-typing-extensions

.include <bsd.port.mk>
