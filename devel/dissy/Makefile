# $OpenBSD: Makefile,v 1.9 2013/08/07 21:31:32 naddy Exp $

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

USE_GROFF =	Yes

.include <bsd.port.mk>
