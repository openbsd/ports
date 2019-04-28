# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:58 sthen Exp $

COMMENT =		makes working with XML feel like orking with JSON

MODPY_EGG_VERSION =	0.11.0
DISTNAME = 		xmltodict-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		textproc

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && \
		${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} tests/*.py

.include <bsd.port.mk>
