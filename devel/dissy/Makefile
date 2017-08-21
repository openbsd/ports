# $OpenBSD: Makefile,v 1.12 2017/08/21 19:43:20 jasper Exp $

COMMENT =		graphical frontend to the objdump disassembler

MODPY_EGG_VERSION = 	9
DISTNAME =		dissy-${MODPY_EGG_VERSION}
CATEGORIES =		devel
HOMEPAGE =		https://github.com/SimonKagstrom/dissy
REVISION =		3

MAINTAINER =		Jonathan Armani <armani@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://distfiles.nl/

MODULES =	lang/python
RUN_DEPENDS =	x11/py-gtk2

NO_TEST =	Yes
PKG_ARCH =	*


.include <bsd.port.mk>
