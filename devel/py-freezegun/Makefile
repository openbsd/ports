# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:44 sthen Exp $

COMMENT =		let your Python tests travel through time

MODPY_EGG_VERSION =	0.3.12
DISTNAME =		freezegun-${MODPY_EGG_VERSION}
PKGNAME =		py-freezegun-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
post-extract:
			rm ${WRKSRC}/freezegun/_async.py
.endif

.include <bsd.port.mk>
