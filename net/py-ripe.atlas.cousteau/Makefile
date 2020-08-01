# $OpenBSD: Makefile,v 1.17 2020/08/01 11:30:36 sthen Exp $

COMMENT =		python bindings for the RIPE Atlas API

MODPY_EGG_VERSION =	1.4.2
DISTNAME =		ripe.atlas.cousteau-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		net

HOMEPAGE =		https://github.com/RIPE-NCC/ripe-atlas-cousteau

# GPLv3
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

MODULES =		lang/python

FLAVORS =               python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			net/py-socketio-client${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-jsonschema${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-backports-ssl-match-hostname \
			devel/py-funcsigs
.endif

.include <bsd.port.mk>
