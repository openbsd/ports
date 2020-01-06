# $OpenBSD: Makefile,v 1.28 2020/01/06 12:55:28 sthen Exp $

COMMENT =	console user interface library for python

MODPY_EGG_VERSION = 2.1.0
DISTNAME =	urwid-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel

HOMEPAGE =	http://urwid.org/

MAINTAINER =	Clem Atis <clematis@insiberia.net>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

TEST_DEPENDS =	devel/py-gobject3${MODPY_FLAVOR}

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes

MODPY_PYTEST =	Yes
MODPY_PYTEST_ARGS = urwid/tests

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
