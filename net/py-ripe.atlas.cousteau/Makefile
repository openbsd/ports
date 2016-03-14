# $OpenBSD: Makefile,v 1.3 2016/03/14 09:33:52 florian Exp $

COMMENT =		python bindings for the RIPE Atlas API

MODPY_EGG_VERSION =	1.2
DISTNAME =		ripe.atlas.cousteau-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

HOMEPAGE =		https://github.com/RIPE-NCC/ripe-atlas-cousteau

MAINTAINER=		Florian Obser <florian+ports@narrans.de>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-dateutil \
			net/py-socketio-client \
			www/py-requests

# unported dep: pbr (also need py-functools32, py-jsonschema)
NO_TEST =		Yes

.include <bsd.port.mk>
