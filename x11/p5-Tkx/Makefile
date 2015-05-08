# $OpenBSD: Makefile,v 1.1.1.1 2015/05/08 03:11:18 stu Exp $

COMMENT =		Tk extension module for Perl

DISTNAME =		Tkx-1.09
CATEGORIES =		x11 devel
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan x11/tk

BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS} devel/p5-Tcl

CONFIGURE_ARGS =	INSTALLSITESCRIPT='$${PREFIX}/share/examples/p5-Tkx'

TEST_IS_INTERACTIVE =	X11

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/menu ${PREFIX}/share/examples/p5-Tkx

.include <bsd.port.mk>
