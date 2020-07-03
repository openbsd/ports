# $OpenBSD: Makefile,v 1.33 2020/07/03 21:12:49 sthen Exp $

COMMENT =		JSON encoder/decoder

MODPY_EGG_VERSION =	3.11.1
DISTNAME =		simplejson-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

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
