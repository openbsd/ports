# $OpenBSD: Makefile,v 1.10 2015/01/21 14:43:34 sthen Exp $

COMMENT =		simple interface to Gtk2 complex MVC list widget

MODULES =		cpan
DISTNAME =		Gtk2-Ex-Simple-List-0.50
REVISION =		2
CATEGORIES =		x11

MAINTAINER =		James Wright <jamesw@bsdhosting.co.za>

# LPGLv2
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	x11/p5-Gtk2

BUILD_DEPENDS = ${RUN_DEPENDS}

TEST_IS_INTERACTIVE =		X11

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
