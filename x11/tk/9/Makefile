COMMENT =		graphical toolkit for Tcl

P =			3

DISTNAME =		tk9.0.${P}
PKGNAME =		tk-9.0.${P}
SHARED_LIBS =		tk90 0.${P}

CATEGORIES =		x11 x11/tk
HOMEPAGE =		http://www.tcl-lang.org/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		X11 Xext Xft Xss c cups fontconfig freetype m pthread tcl90 z

SITES =			${SITE_SOURCEFORGE:=tcl/}
DISTFILES =		${DISTNAME}-src.tar.gz

LIB_DEPENDS =		tcl-9.0.${P}:lang/tcl/9 \
			print/cups,-libs

MAKE_FLAGS =		TK_LIBRARY='$$(prefix)/lib/tcl/tk$$(MAJOR_VERSION)' \
			TCL_GENERIC_DIR='${LOCALBASE}/include/tcl9' \
			TCL_PLATFORM_DIR='$$(TCL_GENERIC_DIR)'

FAKE_FLAGS =		INSTALL_PROGRAM='${INSTALL_PROGRAM}' \
			INSTALL_LIBRARY='$$(INSTALL_DATA)' \
			CONFIG_INSTALL_DIR='$$(SCRIPT_INSTALL_DIR)' \
			TK_PKG_DIR='tcl/tk$$(MAJOR_VERSION)'

TEST_FLAGS =		HOME=${TESTHOME} TESTFLAGS="${TESTFLAGS}"

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu old

CONFIGURE_ARGS =	--includedir='${PREFIX}/include/tk9' \
			--mandir='${PREFIX}/lib/tcl/tk9/man' \
			--sysconfdir='${SYSCONFDIR}' \
			--enable-man-symlinks \
			--disable-rpath \
			--disable-zipfs \
			--with-tcl='${LOCALBASE}/lib/tcl/tcl9' \
			DEMO_DIR='${PREFIX}/share/examples/tk9' \
			SHLIB_VERSION='${LIBtk90_VERSION}'

TEST_IS_INTERACTIVE =	X11
WRKSRC =		${WRKDIST}/unix
TEST_TARGET =		test

TESTHOME =		${WRKDIR}/testhome

# Use TESTFLAGS to control the Tk tests
TESTFLAGS =

pre-test:
	mkdir -p ${TESTHOME}

.include <bsd.port.mk>
