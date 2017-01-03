# $OpenBSD: Makefile,v 1.6 2017/01/03 19:24:43 landry Exp $

COMMENT =		official command-line client for RIPE Atlas

MODPY_EGG_VERSION =	2.0.2
DISTNAME =		ripe.atlas.tools-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		https://github.com/RIPE-NCC/ripe-atlas-tools

MAINTAINER=		Florian Obser <florian+ports@narrans.de>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-tzlocal${MODPY_FLAVOR} \
			net/py-IP${MODPY_FLAVOR} \
			net/py-ripe.atlas.cousteau${MODPY_FLAVOR} \
			net/py-ripe.atlas.sagan${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR}

# runs into some problem with namespace
NO_TEST =		Yes

.include <bsd.port.mk>
