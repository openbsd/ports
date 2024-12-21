COMMENT =	pcap bgp parser

MODPY_DISTV =	0.2.22
DISTNAME =	pbgpp-${MODPY_DISTV}
REVISION =	5

CATEGORIES =	net

MAINTAINER =	Peter Hessler <phessler@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		net/py-pcapy
BUILD_DEPENDS +=	${RUN_DEPENDS}

# tests depend on a running kafka
NO_TEST =		Yes

.include <bsd.port.mk>
