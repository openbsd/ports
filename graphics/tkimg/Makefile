COMMENT =		image extension for Tcl/Tk

V =			1.4.13

DISTNAME =		Img-${V}-Source
PKGNAME =		tkimg-${V}
CATEGORIES =		graphics
HOMEPAGE = 		http://tkimg.sourceforge.net/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes
WANTLIB =		X11 Xext Xft Xss fontconfig m
SITES =			${SITE_SOURCEFORGE:=tkimg/}
MODULES =		x11/tk

BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS} \
			devel/tcllib

RUN_DEPENDS =		${MODTK_RUN_DEPENDS}

FAKE_FLAGS =		INSTALL_ROOT=${DESTDIR} \
			LIB_RUNTIME_DIR=${MODTCL_TCLDIR}/tkimg

TEST_FLAGS =		libdir=${WRKBUILD}
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--libdir=${MODTCL_TCLDIR}/tkimg \
			--includedir=${PREFIX}/include/tkimg \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--with-x

TEST_IS_INTERACTIVE =	X11
WRKDIST =		${WRKDIR}/Img-${V}
TEST_TARGET =		test

.include <bsd.port.mk>
