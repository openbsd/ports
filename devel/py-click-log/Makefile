# $OpenBSD: Makefile,v 1.3 2018/08/11 09:26:32 remi Exp $

COMMENT =		logging integration for Python click

MODPY_EGG_VERSION =	0.3.2
DISTNAME =		click-log-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/click-contrib/click-log

MAINTAINER =		Remi Locherer <remi@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			${RUN_DEPENDS}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_ENV =		LC_CTYPE=C.UTF-8

do-test:
	cd ${WRKSRC} && ${SETENV} ${TEST_ENV} ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
