# $OpenBSD: Makefile,v 1.12 2016/06/29 16:14:45 espie Exp $

COMMENT =		graphical toolkit for Tcl

P =			4
DISTNAME =		tk8.6.${P}
PKGNAME =		tk-8.6.${P}
REVISION =		1
SHARED_LIBS =		tk86 1.2
CATEGORIES =		x11 x11/tk
HOMEPAGE =		http://www.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		X11 Xext Xft Xss c fontconfig m pthread tcl86 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
DISTFILES =		${DISTNAME}-src.tar.gz

LIB_DEPENDS =		tcl-8.6.${P}:lang/tcl/8.6

MAKE_FLAGS +=		TK_LIBRARY='$$(prefix)/lib/tcl/tk$$(VERSION)' \
			TCL_GENERIC_DIR='${LOCALBASE}/include/tcl8.6' \
			TCL_PLATFORM_DIR='$$(TCL_GENERIC_DIR)'

FAKE_FLAGS =		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_LIBRARY="${INSTALL_DATA}" \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			CONFIG_INSTALL_DIR='$$(SCRIPT_INSTALL_DIR)' \
			DEMO_INSTALL_DIR="${WRKINST}${TRUEPREFIX}/share/examples/tk8.6" \
			TK_PKG_DIR='tcl/tk$$(VERSION)'

TEST_FLAGS =		HOME=${TESTHOME} TESTFLAGS="${TESTFLAGS}"
SEPARATE_BUILD =	Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu old

CONFIGURE_ARGS +=	--includedir="${PREFIX}/include/tk8.6" \
			--mandir="${PREFIX}/lib/tcl/tk8.6/man" \
			--sysconfdir="${SYSCONFDIR}" \
			--enable-man-symlinks \
			--disable-rpath \
			--with-tcl="${LOCALBASE}/lib/tcl/tcl8.6" \
			EXTRA_INSTALL_BINARIES='@echo "Installing libtk86.a to $$(LIB_INSTALL_DIR)/" \
			&& $$(INSTALL_DATA) libtk86.a $$(LIB_INSTALL_DIR)/libtk86.a \
			&& (cd $$(LIB_INSTALL_DIR) ; $$(RANLIB) libtk86.a)' \
			SHLIB_VERSION="${LIBtk86_VERSION}"

ALL_TARGET =		all libtk86.a

TEST_IS_INTERACTIVE =	X11
WRKSRC =		${WRKDIST}/unix
TEST_TARGET =		test

TESTHOME =		${WRKDIR}/testhome
# Use TESTFLAGS to control the Tk tests
TESTFLAGS =

pre-test:
	mkdir -p ${TESTHOME}

post-install:
	${INSTALL_DATA} ${WRKDIST}/license.terms ${PREFIX}/lib/tcl/tk8.6/man
	ln -s libtk86.a ${PREFIX}/lib/libtk86_pic.a
	ln -s libtkstub86.a ${PREFIX}/lib/libtkstub86_pic.a

.include <bsd.port.mk>
