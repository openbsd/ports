# $OpenBSD: Makefile,v 1.27 2017/01/03 19:19:49 landry Exp $

COMMENT =		JSON encoder/decoder

MODPY_EGG_VERSION =	3.10.0
DISTNAME =		simplejson-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
