# $OpenBSD: Makefile,v 1.17 2020/01/26 11:14:30 jasper Exp $

COMMENT =		graphical frontend to the objdump disassembler

MODPY_EGG_VERSION = 	9
DISTNAME =		dissy-${MODPY_EGG_VERSION}
CATEGORIES =		devel
HOMEPAGE =		https://github.com/SimonKagstrom/dissy
REVISION =		4

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://distfiles.sigtrap.nl/

MODULES =	lang/python
RUN_DEPENDS =	x11/py-gtk2
MODPY_PYTEST =	Yes

.include <bsd.port.mk>
