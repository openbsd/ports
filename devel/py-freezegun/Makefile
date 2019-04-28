# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:33 sthen Exp $

COMMENT =		let your Python tests travel through time

MODPY_EGG_VERSION =	0.3.9
DISTNAME =		freezegun-${MODPY_EGG_VERSION}
PKGNAME =		py-freezegun-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
			cd ${WRKSRC} && \
			${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} tests/*.py

.include <bsd.port.mk>
