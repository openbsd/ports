# $OpenBSD: Makefile,v 1.1.1.1 2015/07/10 17:15:22 ajacoutot Exp $

COMMENT =		standalone version of Django's feedgenerator

MODPY_EGG_VERSION =	1.7
DISTNAME =		feedgenerator-${MODPY_EGG_VERSION}
PKGNAME =		py-feedgenerator-${MODPY_EGG_VERSION}

CATEGORIES =		www textproc

HOMEPAGE =		http://pypi.python.org/pypi/feedgenerator

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
