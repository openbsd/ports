# $OpenBSD: Makefile,v 1.9 2013/03/11 11:46:14 espie Exp $

COMMENT =		simple interface to Gtk2 complex MVC list widget

MODULES =		cpan
DISTNAME =		Gtk2-Ex-Simple-List-0.50
REVISION =		2
CATEGORIES =		x11
USE_GROFF =		Yes

MAINTAINER =		James Wright <jamesw@bsdhosting.co.za>

# LPGLv2
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	x11/p5-Gtk2

BUILD_DEPENDS = ${RUN_DEPENDS}

TEST_IS_INTERACTIVE =		X11

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
