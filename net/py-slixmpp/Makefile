COMMENT =		slixmpp is an elegant Python library for XMPP

MODPY_DISTV =	1.8.3
DISTNAME =		slixmpp-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net
REVISION =		1

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-asn1 \
			devel/py-asn1-modules \
			net/py-aiodns \
			www/py-aiohttp

TEST_DEPENDS =		security/gnupg

.include <bsd.port.mk>
