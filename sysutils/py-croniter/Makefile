# $OpenBSD: Makefile,v 1.16 2020/06/18 18:00:18 jasper Exp $

COMMENT =		datetime-iterator for cron-like formats

MODPY_EGG_VERSION =	0.3.33
DISTNAME =		croniter-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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
