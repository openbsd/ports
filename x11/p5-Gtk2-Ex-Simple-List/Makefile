# $OpenBSD: Makefile,v 1.3 2010/07/13 20:14:24 sthen Exp $

COMMENT =		A simple interface to Gtk2 complex MVC list widget

MODULES =		cpan
DISTNAME =		Gtk2-Ex-Simple-List-0.50
REVISION =		0
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
