# $OpenBSD: Makefile,v 1.5 2013/08/07 21:31:17 naddy Exp $

COMMENT =		Python last.fm library

MODPY_EGG_VERSION =	0.4.30
DISTNAME =		pylast-${MODPY_EGG_VERSION}
PKGNAME =		py-last-${MODPY_EGG_VERSION}
REVISION =		2
CATEGORIES =		audio net

HOMEPAGE =		https://code.google.com/p/pylast/

MAINTAINER = 		Edd Barrett <edd@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=p/pylast/}

MODULES =	lang/python

NO_TEST =	Yes

.include <bsd.port.mk>
