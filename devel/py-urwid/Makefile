# $OpenBSD: Makefile,v 1.16 2015/04/21 18:33:49 sthen Exp $

COMMENT =	console user interface library for python

MODPY_EGG_VERSION = 1.0.0
DISTNAME =	urwid-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	http://excess.org/urwid/

# GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

WANTLIB- = # no-arch package

MASTER_SITES =	${HOMEPAGE}

TEST_DEPENDS =	devel/py-gobject \
		lang/python/${MODPY_VERSION},-tests

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

PKG_ARCH =	*

.include <bsd.port.mk>
