# $OpenBSD: Makefile,v 1.15 2013/10/03 16:37:16 dcoppa Exp $

COMMENT =	console user interface library for python

MODPY_EGG_VERSION = 1.0.0
DISTNAME =	urwid-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel

HOMEPAGE =	http://excess.org/urwid/

# GPL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}

TEST_DEPENDS =	devel/py-gobject \
			lang/python/${MODPY_VERSION},-tests

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

PKG_ARCH =	*

WANTLIB +=	${MODPY_WANTLIB}

.include <bsd.port.mk>
