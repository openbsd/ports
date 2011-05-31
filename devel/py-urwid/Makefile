# $OpenBSD: Makefile,v 1.10 2011/05/31 05:44:27 rpointel Exp $

COMMENT =	console user interface library for python

MODPY_EGG_VERSION = 0.9.9.1
DISTNAME =	urwid-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0
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

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} ./test_urwid.py

.include <bsd.port.mk>
