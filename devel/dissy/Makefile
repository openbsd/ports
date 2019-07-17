# $OpenBSD: Makefile,v 1.15 2019/07/17 14:49:20 danj Exp $

COMMENT =		graphical frontend to the objdump disassembler

MODPY_EGG_VERSION = 	9
DISTNAME =		dissy-${MODPY_EGG_VERSION}
CATEGORIES =		devel
HOMEPAGE =		https://github.com/SimonKagstrom/dissy
REVISION =		4

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://distfiles.nl/

MODULES =	lang/python
RUN_DEPENDS =	x11/py-gtk2

NO_TEST =	Yes

.include <bsd.port.mk>
