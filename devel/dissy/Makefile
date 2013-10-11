# $OpenBSD: Makefile,v 1.10 2013/10/11 23:48:24 naddy Exp $

COMMENT =		graphical frontend to the objdump disassembler

MODPY_EGG_VERSION = 	9
DISTNAME =		dissy-${MODPY_EGG_VERSION}
CATEGORIES =		devel
HOMEPAGE =		https://code.google.com/p/dissy/
REVISION =		2

MAINTAINER =		Jonathan Armani <armani@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes


MASTER_SITES =	https://dissy.googlecode.com/files/

MODULES =	lang/python
RUN_DEPENDS =	x11/py-gtk2

NO_TEST =	Yes
PKG_ARCH =	*


.include <bsd.port.mk>
