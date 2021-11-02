# $OpenBSD: Makefile,v 1.15 2021/11/02 00:02:53 sthen Exp $

COMMENT =		standalone version of Django's feedgenerator

MODPY_EGG_VERSION =	1.9.1
DISTNAME =		feedgenerator-${MODPY_EGG_VERSION}
PKGNAME =		py-feedgenerator-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		www textproc


MAINTAINER =		Vladimir D. Seleznev <vseleznv@cs.msu.ru>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
