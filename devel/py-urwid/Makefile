# $OpenBSD: Makefile,v 1.27 2019/09/26 21:28:04 kmos Exp $

COMMENT =	console user interface library for python

MODPY_EGG_VERSION = 2.0.1
DISTNAME =	urwid-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	http://urwid.org/

MAINTAINER =	Clem Atis <clematis@insiberia.net>


# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

TEST_DEPENDS =	devel/py-gobject3${MODPY_FLAVOR} \
		lang/python/${MODPY_VERSION},-tests

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
