# $OpenBSD: Makefile,v 1.31 2019/05/13 18:06:44 danj Exp $

COMMENT =		JSON encoder/decoder

MODPY_EGG_VERSION =	3.11.1
DISTNAME =		simplejson-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

# MIT/AFLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

pre-test:
	@${MODPY_CMD} build_ext --inplace

.include <bsd.port.mk>
