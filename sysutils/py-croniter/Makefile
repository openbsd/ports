COMMENT =		datetime-iterator for cron-like formats

MODPY_EGG_VERSION =	0.3.37
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

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			textproc/py-natsort${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-tz${MODPY_FLAVOR} \
			devel/py-tzlocal${MODPY_FLAVOR}

.include <bsd.port.mk>
