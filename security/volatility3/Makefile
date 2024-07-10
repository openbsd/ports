COMMENT =		volatile memory extraction framework

MODPY_EGG_VERSION =	2.7.0
DISTNAME =		volatility3-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME}

CATEGORIES =		security
HOMEPAGE =		https://www.volatilityfoundation.org/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# VSL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

PORTHOME =		${WRKDIR}

# fixture 'image' not found
NO_TEST =		Yes

RUN_DEPENDS =		devel/capstone/python${MODPY_FLAVOR} \
			security/py-cryptodome${MODPY_FLAVOR} \
			security/py-pefile${MODPY_FLAVOR} \
			security/yara/python${MODPY_FLAVOR}

.include <bsd.port.mk>
