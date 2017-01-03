# $OpenBSD: Makefile,v 1.23 2017/01/03 19:19:49 landry Exp $

COMMENT =	console user interface library for python

MODPY_EGG_VERSION = 1.3.1
DISTNAME =	urwid-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	http://urwid.org/

# LGPLv2.1
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
