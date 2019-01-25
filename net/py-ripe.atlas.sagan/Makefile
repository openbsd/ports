# $OpenBSD: Makefile,v 1.9 2019/01/25 22:24:35 sthen Exp $

COMMENT =		parsing library for RIPE Atlas measurement results

MODPY_EGG_VERSION =	1.3.0
DISTNAME =		ripe.atlas.sagan-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

HOMEPAGE =		https://github.com/RIPE-NCC/ripe.atlas.sagan

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

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
