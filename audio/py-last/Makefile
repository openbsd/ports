# $OpenBSD: Makefile,v 1.4 2013/03/10 22:55:05 espie Exp $

COMMENT =		Python last.fm library

MODPY_EGG_VERSION =	0.4.30
DISTNAME =		pylast-${MODPY_EGG_VERSION}
PKGNAME =		py-last-${MODPY_EGG_VERSION}
REVISION =		1
CATEGORIES =		audio net

HOMEPAGE =		http://code.google.com/p/pylast/

MAINTAINER = 		Edd Barrett <edd@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=p/pylast/}

MODULES =	lang/python

NO_TEST =	Yes

.include <bsd.port.mk>
