# $OpenBSD: Makefile,v 1.5 2013/03/12 12:36:56 benoit Exp $

COMMENT =		passive checker of Python programs

MODPY_EGG_VERSION =	0.6.1
DISTNAME =		pyflakes-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://launchpad.net/pyflakes

MAINTAINER =		frantisek holop <minusf@obiit.org>

# MIT 
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=p/pyflakes/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-unittest2

do-test: fake
			cd ${WRKSRC} && unit2 discover

.include <bsd.port.mk>
