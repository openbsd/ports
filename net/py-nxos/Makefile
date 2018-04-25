# $OpenBSD: Makefile,v 1.1.1.1 2018/04/25 14:22:06 jasper Exp $

COMMENT =		library for managing Cisco NX-OS devices through NX-API

MODPY_EGG_VERSION =	0.0.3
DISTNAME =		pynxos-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/py//}

CATEGORIES =		net

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-future${MODPY_FLAVOR} \
			security/py-scp${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
