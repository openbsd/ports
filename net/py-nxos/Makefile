# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:02 sthen Exp $

COMMENT =		library for managing Cisco NX-OS devices through NX-API

MODPY_EGG_VERSION =	0.0.5
REVISION =		1
DISTNAME =		pynxos-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/py//}

CATEGORIES =		net

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-future${MODPY_FLAVOR} \
			security/py-scp${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
