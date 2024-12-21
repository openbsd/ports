COMMENT =	pure Python OPC UA client and server library

MODPY_DISTV =	0.98.13

DISTNAME =	opcua-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	4

CATEGORIES =	misc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-dateutil \
			devel/py-tz \
			security/py-cryptography \
			textproc/py-lxml

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
