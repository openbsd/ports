# $OpenBSD: Makefile,v 1.12 2019/07/12 20:51:18 sthen Exp $

COMMENT =		simple interface to Gtk2 complex MVC list widget

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Gtk2-Ex-Simple-List-0.50
REVISION =		2
CATEGORIES =		x11

MAINTAINER =		James Wright <jamesw@bsdhosting.co.za>

# LPGLv2
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	x11/p5-Gtk2

BUILD_DEPENDS = ${RUN_DEPENDS}

TEST_IS_INTERACTIVE =		X11

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
