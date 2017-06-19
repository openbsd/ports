# $OpenBSD: Makefile,v 1.28 2017/06/19 19:53:16 shadchin Exp $

COMMENT =		JSON encoder/decoder

MODPY_EGG_VERSION =	3.11.0
DISTNAME =		simplejson-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

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
