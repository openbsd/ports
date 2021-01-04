# $OpenBSD: Makefile,v 1.35 2021/01/04 14:06:31 sthen Exp $

COMMENT =		JSON encoder/decoder

MODPY_EGG_VERSION =	3.17.2
DISTNAME =		simplejson-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

# MIT/AFLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

pre-test:
	@${MODPY_CMD} build_ext --inplace

.include <bsd.port.mk>
