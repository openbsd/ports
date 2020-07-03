# $OpenBSD: Makefile,v 1.4 2020/07/03 21:46:08 sthen Exp $

COMMENT =		Tk extension module for Perl

DISTNAME =		Tkx-1.09
CATEGORIES =		x11 devel
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>
REVISION =		0

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan x11/tk
PKG_ARCH =		*

BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS} devel/p5-Tcl

CONFIGURE_ARGS =	INSTALLSITESCRIPT='$${PREFIX}/share/examples/p5-Tkx'

TEST_IS_INTERACTIVE =	X11

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/menu ${PREFIX}/share/examples/p5-Tkx

.include <bsd.port.mk>
