# $OpenBSD: Makefile,v 1.24 2016/02/27 17:47:46 shadchin Exp $

COMMENT =		JSON encoder/decoder

MODPY_EGG_VERSION =	3.8.2
DISTNAME =		simplejson-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT/AFLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

pre-test:
	@${MODPY_CMD} build_ext --inplace

.include <bsd.port.mk>
