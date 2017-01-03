# $OpenBSD: Makefile,v 1.6 2017/01/03 19:24:43 landry Exp $

COMMENT =		parsing library for RIPE Atlas measurement results

MODPY_EGG_VERSION =	1.1.11
DISTNAME =		ripe.atlas.sagan-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		https://github.com/RIPE-NCC/ripe.atlas.sagan

MAINTAINER=		Florian Obser <florian+ports@narrans.de>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR}

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR}

.include <bsd.port.mk>
