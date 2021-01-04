# $OpenBSD: Makefile,v 1.4 2021/01/04 14:06:29 sthen Exp $

COMMENT =	implemention of the crc32c algorithm in hardware

MODPY_EGG_VERSION =	2.0

DISTNAME =	crc32c-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

HOMEPAGE =	https://github.com/ICRAR/crc32c

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

WANTLIB =	pthread ${MODPY_WANTLIB}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
