# $OpenBSD: Makefile,v 1.1.1.1 2018/08/09 19:51:06 sthen Exp $

COMMENT =		serialize and deserialize AMF data

MODPY_EGG_VERSION =	0.9.1
DISTNAME =		Mini-AMF-${MODPY_EGG_VERSION}
PKGNAME =		py-mini-amf-${MODPY_EGG_VERSION}

CATEGORIES =		converters
HOMEPAGE =		https://github.com/zackw/mini-amf

MAINTAINER =		Timo Myyra <timo.myyra@bittivirhe.fi>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			textproc/py-defusedxml${MODPY_FLAVOR}

TEST_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
