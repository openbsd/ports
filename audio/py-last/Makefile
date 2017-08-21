# $OpenBSD: Makefile,v 1.11 2017/08/21 18:34:04 jasper Exp $

COMMENT =		Python last.fm library

MODPY_EGG_VERSION =	0.5.11
DISTNAME =		pylast-${MODPY_EGG_VERSION}
PKGNAME =		py-last-${MODPY_EGG_VERSION}
CATEGORIES =		audio net
REVISION =		2

HOMEPAGE =		https://github.com/pylast/pylast

MAINTAINER = 		Edd Barrett <edd@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR ?=

MODULES =	lang/python

NO_TEST =	Yes

.include <bsd.port.mk>
