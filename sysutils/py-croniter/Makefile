# $OpenBSD: Makefile,v 1.18 2020/07/03 21:13:10 sthen Exp $

COMMENT =		datetime-iterator for cron-like formats

MODPY_EGG_VERSION =	0.3.34
DISTNAME =		croniter-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	lib/croniter

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			textproc/py-natsort
TEST_DEPENDS =		devel/py-tz${MODPY_FLAVOR}

.include <bsd.port.mk>
