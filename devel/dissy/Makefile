# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:03 espie Exp $

COMMENT =		graphical frontend to the objdump disassembler

MODPY_EGG_VERSION = 	9
DISTNAME =		dissy-${MODPY_EGG_VERSION}
CATEGORIES =		devel
HOMEPAGE =		http://code.google.com/p/dissy/
REVISION =		1

MAINTAINER =		Jonathan Armani <armani@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes


MASTER_SITES =	http://dissy.googlecode.com/files/

MODULES =	lang/python
RUN_DEPENDS =	x11/py-gtk2

NO_TEST =	Yes
PKG_ARCH =	*

USE_GROFF =	Yes

.include <bsd.port.mk>
