COMMENT =		slixmpp is an elegant Python library for XMPP

MODPY_EGG_VERSION =	1.8.3
DISTNAME =		slixmpp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net
REVISION =		0

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-asn1${MODPY_FLAVOR} \
			devel/py-asn1-modules${MODPY_FLAVOR} \
			net/py-aiodns${MODPY_FLAVOR} \
			www/py-aiohttp${MODPY_FLAVOR}

TEST_DEPENDS =		security/gnupg

.include <bsd.port.mk>
