# $OpenBSD: Makefile,v 1.6 2017/12/29 07:23:08 florian Exp $

COMMENT =		python bindings for the RIPE Atlas API

MODPY_EGG_VERSION =	1.3
DISTNAME =		ripe.atlas.cousteau-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		net

HOMEPAGE =		https://github.com/RIPE-NCC/ripe-atlas-cousteau

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python

FLAVORS =               python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			net/py-socketio-client${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-funcsigs${MODPY_FLAVOR} \
			devel/py-jsonschema${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR}

.include <bsd.port.mk>
