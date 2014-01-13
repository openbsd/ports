# $OpenBSD: Makefile,v 1.6 2014/01/13 20:24:22 bcallah Exp $

COMMENT =		Python last.fm library

MODPY_EGG_VERSION =	0.5.11
DISTNAME =		pylast-${MODPY_EGG_VERSION}
PKGNAME =		py-last-${MODPY_EGG_VERSION}
CATEGORIES =		audio net

HOMEPAGE =		https://code.google.com/p/pylast/

MAINTAINER = 		Edd Barrett <edd@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=p/pylast/}

MODULES =	lang/python

NO_TEST =	Yes

.include <bsd.port.mk>
