COMMENT =	widgets for OPC UA

MODPY_DISTV =	0.5.10

DISTNAME =	opcua-widgets-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	5

CATEGORIES =	misc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		misc/freeopcua/py-opcua \
			x11/py-qt5

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

.include <bsd.port.mk>
