COMMENT =		library for managing Cisco NX-OS devices through NX-API

MODPY_DISTV =	0.0.5
REVISION =		8
DISTNAME =		pynxos-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/py//}

CATEGORIES =		net

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
NO_TEST =		Yes

RUN_DEPENDS =		devel/py-future \
			security/py-scp \
			www/py-requests

.include <bsd.port.mk>
