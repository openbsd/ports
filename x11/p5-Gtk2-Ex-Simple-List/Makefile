# $OpenBSD: Makefile,v 1.14 2020/07/03 21:46:08 sthen Exp $

COMMENT =		simple interface to Gtk2 complex MVC list widget

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Gtk2-Ex-Simple-List-0.50
REVISION =		4
CATEGORIES =		x11

# LPGLv2
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	x11/p5-Gtk2

BUILD_DEPENDS = ${RUN_DEPENDS}

TEST_IS_INTERACTIVE =		X11

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
