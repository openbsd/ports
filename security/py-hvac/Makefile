# $OpenBSD: Makefile,v 1.1.1.1 2021/11/20 08:22:34 landry Exp $

COMMENT =		Python client library for Hashicorp Vault

MODPY_EGG_VERSION =	0.11.2
DISTNAME =		hvac-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

MAINTAINER =		Mikolaj Kucharski <mikolaj@kucharski.name>

CATEGORIES =		security

HOMEPAGE =		https://github.com/hvac/hvac

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
