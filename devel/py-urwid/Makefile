# $OpenBSD: Makefile,v 1.21 2015/09/29 10:52:12 sthen Exp $

COMMENT =	console user interface library for python

MODPY_EGG_VERSION = 1.3.0
REVISION =	1
DISTNAME =	urwid-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel

HOMEPAGE =	http://urwid.org/

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

TEST_DEPENDS =	devel/py-gobject3${MODPY_FLAVOR} \
		lang/python/${MODPY_VERSION},-tests

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
