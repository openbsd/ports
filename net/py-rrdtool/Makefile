COMMENT =	Python bindings for rrdtool

MODPY_EGG_VERSION =	0.1.16

DISTNAME =	rrdtool-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

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

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
