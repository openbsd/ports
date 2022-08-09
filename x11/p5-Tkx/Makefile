COMMENT =		Perl interface to the Tk graphical toolkit

DISTNAME =		Tkx-1.10
CATEGORIES =		x11 devel
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

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
