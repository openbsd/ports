# $OpenBSD: Makefile,v 1.6 2014/09/04 05:58:50 benoit Exp $

COMMENT =		passive checker of Python programs

MODPY_EGG_VERSION =	0.8.1
DISTNAME =		pyflakes-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://launchpad.net/pyflakes

MAINTAINER =		frantisek holop <minusf@obiit.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=p/pyflakes/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
