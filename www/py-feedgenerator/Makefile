# $OpenBSD: Makefile,v 1.6 2016/11/21 08:07:52 danj Exp $

COMMENT =		standalone version of Django's feedgenerator

MODPY_EGG_VERSION =	1.9
DISTNAME =		feedgenerator-${MODPY_EGG_VERSION}
PKGNAME =		py-feedgenerator-${MODPY_EGG_VERSION}

CATEGORIES =		www textproc


MAINTAINER =		Vladimir D. Seleznev <vseleznv@cs.msu.ru>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR}

TEST_DEPENDS =		${RUN_DEPENDS}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
