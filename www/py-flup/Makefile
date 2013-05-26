# $OpenBSD: Makefile,v 1.12 2013/05/26 09:30:55 kirby Exp $

COMMENT =		random assortment of WSGI servers, middleware

MODPY_EGG_VERSION =	1.0.2
DISTNAME =		flup-${MODPY_EGG_VERSION}
PKGNAME =		py-flup-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		www

HOMEPAGE =		${MASTER_SITE_PYPI:=y/flup/}

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=f/flup/}

MODULES =		lang/python

NO_TEST =		Yes

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
