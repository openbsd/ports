# $OpenBSD: Makefile,v 1.5 2010/10/03 15:27:39 jasper Exp $

COMMENT =		simple interface to Gtk2 complex MVC list widget

MODULES =		cpan
DISTNAME =		Gtk2-Ex-Simple-List-0.50
REVISION =		1
CATEGORIES =		x11

MAINTAINER =		James Wright <jamesw@bsdhosting.co.za>

# LPGLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	::x11/p5-Gtk2

BUILD_DEPENDS = ${RUN_DEPENDS}

REGRESS_IS_INTERACTIVE =		X11

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
