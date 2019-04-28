# $OpenBSD: Makefile,v 1.11 2019/04/28 20:51:45 sthen Exp $

COMMENT =		python bindings for the RIPE Atlas API

MODPY_EGG_VERSION =	1.4.2
DISTNAME =		ripe.atlas.cousteau-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
			devel/py-jsonschema${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-funcsigs
.endif

.include <bsd.port.mk>
