# $OpenBSD: Makefile,v 1.6 2020/07/03 21:12:36 sthen Exp $

COMMENT =		serialize and deserialize AMF data

MODPY_EGG_VERSION =	0.9.1
DISTNAME =		Mini-AMF-${MODPY_EGG_VERSION}
PKGNAME =		py-mini-amf-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		converters
HOMEPAGE =		https://github.com/zackw/mini-amf

MAINTAINER =		Timo Myyra <timo.myyra@bittivirhe.fi>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			textproc/py-defusedxml${MODPY_FLAVOR}

.include <bsd.port.mk>
