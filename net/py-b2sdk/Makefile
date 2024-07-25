COMMENT =		client lib to access B2 cloud storage

MODPY_EGG_VERSION =	2.4.1
DISTNAME =		b2sdk-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel net

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		pdm

# Tests require a Backblaze account and network connectivity
NO_TEST =		Yes

BUILD_DEPENDS =		devel/py-annotated_types${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-annotated_types${MODPY_FLAVOR} \
			devel/py-arrow${MODPY_FLAVOR} \
			devel/py-logfury${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			devel/py-typing-extensions${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
