# $OpenBSD: Makefile,v 1.2 2009/09/07 11:43:46 landry Exp $

COMMENT =		A simple interface to Gtk2 complex MVC list widget

MODULES =		cpan
DISTNAME =		Gtk2-Ex-Simple-List-0.50
PKGNAME =		p5-${DISTNAME}p0
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
