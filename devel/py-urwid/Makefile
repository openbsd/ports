# $OpenBSD: Makefile,v 1.13 2011/10/08 13:26:02 rpointel Exp $

COMMENT =	console user interface library for python

MODPY_EGG_VERSION = 1.0.0
DISTNAME =	urwid-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel

HOMEPAGE =	http://excess.org/urwid/

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}

REGRESS_DEPENDS =	devel/py-gobject \
			lang/python/${MODPY_VERSION},-tests

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_BADEGGS =	urwid

PKG_ARCH =	*

WANTLIB +=	${MODPY_WANTLIB}

.include <bsd.port.mk>
