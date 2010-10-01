# $OpenBSD: Makefile,v 1.4 2010/10/01 22:20:54 jasper Exp $

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

EG_DIR =		${PREFIX}/share/examples/p5-Gtk2-Ex-Simple-List/

post-install:
	${INSTALL_DATA_DIR} ${EG_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EG_DIR}

.include <bsd.port.mk>
