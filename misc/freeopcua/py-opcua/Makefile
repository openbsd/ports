COMMENT =	pure Python OPC UA client and server library

MODPY_EGG_VERSION =	0.98.13

DISTNAME =	opcua-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	3

CATEGORIES =	misc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
