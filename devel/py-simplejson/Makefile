# $OpenBSD: Makefile,v 1.23 2016/01/11 11:54:28 shadchin Exp $

COMMENT =		JSON encoder/decoder

MODPY_EGG_VERSION =	3.8.1
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

pre-test: fake
	cp ${WRKINST}${MODPY_SITEPKG}/simplejson/_speedups.so ${WRKSRC}/simplejson/

.include <bsd.port.mk>
