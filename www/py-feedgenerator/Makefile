# $OpenBSD: Makefile,v 1.3 2016/01/07 21:37:50 jasper Exp $

COMMENT =		standalone version of Django's feedgenerator

MODPY_EGG_VERSION =	1.7
DISTNAME =		feedgenerator-${MODPY_EGG_VERSION}
PKGNAME =		py-feedgenerator-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		www textproc


MAINTAINER =		Vladimir Seleznev <vseleznv@cs.msu.ru>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-six \
			devel/py-tz

TEST_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
