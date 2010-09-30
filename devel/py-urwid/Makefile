# $OpenBSD: Makefile,v 1.8 2010/09/30 20:05:45 fgsch Exp $

COMMENT =	console user interface library for python

MODPY_EGG_VERSION = 0.9.9.1
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

REGRESS_DEPENDS =	::devel/py-gobject \
			::lang/python/${MODPY_VERSION},-tests

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_BADEGGS =	urwid

PKG_ARCH =	*

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} ./test_urwid.py

.include <bsd.port.mk>
