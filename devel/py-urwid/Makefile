COMMENT =	console user interface library for python

MODPY_EGG_VERSION = 2.6.10
DISTNAME =	urwid-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
EPOCH =		0

# https://github.com/urwid/urwid
HOMEPAGE =	https://urwid.org/

MAINTAINER =	Clem Atis <clematis@insiberia.net>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

TEST_DEPENDS =	devel/py-exceptiongroup${MODPY_FLAVOR} \
		devel/py-gobject3${MODPY_FLAVOR} \
		devel/py-trio${MODPY_FLAVOR} \
		devel/py-twisted${MODPY_FLAVOR} \
		net/py-zmq${MODPY_FLAVOR} \
		www/py-tornado${MODPY_FLAVOR}

MODULES =	lang/python
MODPY_PYBUILD =	setuptools_scm
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
