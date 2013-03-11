# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:48 espie Exp $

COMMENT =		random assortment of WSGI servers, middleware

MODPY_EGG_VERSION =	1.0.2
DISTNAME =		flup-${MODPY_EGG_VERSION}
PKGNAME =		py-flup-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		www

HOMEPAGE =		http://trac.saddi.com/flup

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=f/flup/}

MODULES =		lang/python

NO_TEST =		Yes

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
