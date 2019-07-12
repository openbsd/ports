# $OpenBSD: Makefile,v 1.46 2019/07/12 20:51:22 sthen Exp $

COMMENT =		graphical toolkit for Tcl

P =			19
DISTNAME =		tk8.5.${P}
PKGNAME =		tk-8.5.${P}
REVISION =		1
SHARED_LIBS =		tk85 0.${P}
CATEGORIES =		x11 x11/tk
HOMEPAGE =		http://www.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		X11 Xext Xft Xss c fontconfig m tcl85

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
DISTFILES =		${DISTNAME}-src.tar.gz

LIB_DEPENDS =		tcl-8.5.${P}:lang/tcl/8.5

MAKE_FLAGS =		TK_LIBRARY='$$(prefix)/lib/tcl/tk$$(VERSION)' \
			TCL_GENERIC_DIR='${LOCALBASE}/include/tcl8.5' \
			TCL_PLATFORM_DIR='$$(TCL_GENERIC_DIR)'

FAKE_FLAGS =		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_LIBRARY="${INSTALL_DATA}" \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			CONFIG_INSTALL_DIR='$$(SCRIPT_INSTALL_DIR)' \
			DEMO_INSTALL_DIR="${WRKINST}${TRUEPREFIX}/share/examples/tk8.5" \
			TK_PKG_DIR='tcl/tk$$(VERSION)'

TEST_FLAGS =		HOME=${TESTHOME} TESTFLAGS="${TESTFLAGS}"
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu old

CONFIGURE_ARGS +=	--includedir="${PREFIX}/include/tk8.5" \
			--mandir="${PREFIX}/lib/tcl/tk8.5/man" \
			--sysconfdir="${SYSCONFDIR}" \
			--enable-man-symlinks \
			--disable-rpath \
			--with-tcl="${LOCALBASE}/lib/tcl/tcl8.5" \
			EXTRA_INSTALL="install-private-headers" \
			EXTRA_INSTALL_BINARIES='@echo "Installing libtk85.a to $$(LIB_INSTALL_DIR)/" \
			&& $$(INSTALL_DATA) libtk85.a $$(LIB_INSTALL_DIR)/libtk85.a \
			&& (cd $$(LIB_INSTALL_DIR) ; $$(RANLIB) libtk85.a)' \
			SHLIB_VERSION="${LIBtk85_VERSION}"

ALL_TARGET =		all libtk85.a

TEST_IS_INTERACTIVE =	X11
WRKSRC =		${WRKDIST}/unix
TEST_TARGET =		test

TESTHOME =		${WRKDIR}/testhome
# Use TESTFLAGS to control the Tk tests
TESTFLAGS =

pre-test:
	mkdir -p ${TESTHOME}

post-install:
	${INSTALL_DATA} ${WRKDIST}/license.terms ${PREFIX}/lib/tcl/tk8.5/man
	ln -s libtk85.a ${PREFIX}/lib/libtk85_pic.a
	ln -s libtkstub85.a ${PREFIX}/lib/libtkstub85_pic.a

.include <bsd.port.mk>
