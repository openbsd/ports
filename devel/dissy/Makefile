# $OpenBSD: Makefile,v 1.1.1.1 2010/10/17 19:04:30 armani Exp $

COMMENT =		graphical frontend to the objdump disassembler

MODPY_EGG_VERSION = 	9
DISTNAME =		dissy-${MODPY_EGG_VERSION}
CATEGORIES =		devel
HOMEPAGE =		http://code.google.com/p/dissy/

MAINTAINER =		Jonathan Armani <armani@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes


MASTER_SITES =	http://dissy.googlecode.com/files/

MODULES =	lang/python
RUN_DEPENDS =	::x11/py-gtk2

NO_REGRESS =	Yes
PKG_ARCH =	*

.include <bsd.port.mk>
