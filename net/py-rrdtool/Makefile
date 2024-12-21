COMMENT =	Python bindings for rrdtool

MODPY_DISTV =	0.1.16

DISTNAME =	rrdtool-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	3

CATEGORIES =	databases net

HOMEPAGE =	https://github.com/commx/python-rrdtool

# LGPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += pthread rrd

MODULES =	lang/python
LIB_DEPENDS =	net/rrdtool

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools
NO_TEST =	Yes

.include <bsd.port.mk>
