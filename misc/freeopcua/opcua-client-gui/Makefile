COMMENT =	minimal OPC UA client GUI

MODPY_DISTV =	0.8.0

DISTNAME =	opcua-client-${MODPY_DISTV}
PKGNAME =	opcua-client-gui-${MODPY_DISTV}
REVISION =	6

CATEGORIES =	misc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		graphics/py-pyqtgraph \
			misc/freeopcua/py-opcua>=0.98.1 \
			misc/freeopcua/py-opcua-widgets>=0.5.4 \
			x11/py-qt5

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
