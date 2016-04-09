# $OpenBSD: Makefile,v 1.5 2016/04/09 18:43:56 shadchin Exp $

COMMENT =		standalone version of Django's feedgenerator

MODPY_EGG_VERSION =	1.8
DISTNAME =		feedgenerator-${MODPY_EGG_VERSION}
PKGNAME =		py-feedgenerator-${MODPY_EGG_VERSION}

CATEGORIES =		www textproc


MAINTAINER =		Vladimir D. Seleznev <vseleznv@cs.msu.ru>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-six \
			devel/py-tz

TEST_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
