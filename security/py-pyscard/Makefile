# $OpenBSD: Makefile,v 1.2 2020/05/23 21:54:05 sthen Exp $

COMMENT =	smartcard package for Python

MODPY_EGG_VERSION =	1.9.9
DISTNAME =		pyscard-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =	security

HOMEPAGE =	https://pyscard.sourceforge.io/

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVOR =		python3
FLAVORS =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

BUILD_DEPENDS =	devel/swig \
		security/pcsc-lite
RUN_DEPENDS =	security/pcsc-lite

.include <bsd.port.mk>
