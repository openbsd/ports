# $OpenBSD: Makefile,v 1.2 2020/07/03 21:13:11 sthen Exp $

COMMENT =		job scheduling for humans

MODPY_EGG_VERSION = 	0.6.0
DISTNAME =		schedule-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		sysutils

MAINTAINER =		Martin Reindl <martin@catai.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
