# $OpenBSD: Makefile,v 1.8 2014/09/07 18:49:32 stu Exp $

COMMENT =		graphical toolkit for Tcl

DISTNAME =		tk8.6.2
PKGNAME =		tk-8.6.2
SHARED_LIBS =		tk86 1.1
CATEGORIES =		x11 x11/tk
HOMEPAGE =		http://www.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		X11 Xext Xft Xss c fontconfig m pthread tcl86 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
DISTFILES =		${DISTNAME}-src.tar.gz

LIB_DEPENDS =		tcl->=8.6.2,<8.6.3:lang/tcl/8.6

MAKE_FLAGS +=		TK_LIBRARY='$$(prefix)/lib/tcl/tk$$(VERSION)' \
			TCL_GENERIC_DIR='$$(GENERIC_DIR)' \
			TCL_PLATFORM_DIR='$$(GENERIC_DIR)'

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

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--includedir="${PREFIX}/include/tk8.6" \
			--mandir="${PREFIX}/lib/tcl/tk8.6/man" \
			--sysconfdir="${SYSCONFDIR}" \
			--enable-man-symlinks \
			--disable-rpath \
			--with-tcl="${LOCALBASE}/lib/tcl/tcl8.6" \
			EXTRA_INSTALL="install-private-headers" \
			EXTRA_CC_SWITCHES="-I${LOCALBASE}/include/tcl8.6" \
			SHLIB_VERSION="${LIBtk86_VERSION}"

.include <bsd.port.arch.mk>

.if ${NO_SHARED_LIBS:L} == "no"
ALL_TARGET =		all libtk86.a
CONFIGURE_ARGS +=	EXTRA_INSTALL_BINARIES='@echo "Installing libtk86.a to $$(LIB_INSTALL_DIR)/" \
			&& $$(INSTALL_DATA) libtk86.a $$(LIB_INSTALL_DIR)/libtk86.a \
			&& (cd $$(LIB_INSTALL_DIR) ; $$(RANLIB) libtk86.a)'
.endif

TEST_IS_INTERACTIVE =	X11
WRKSRC =		${WRKDIST}/unix
TEST_TARGET =		test

TESTHOME =		${WRKDIR}/testhome
# Use TESTFLAGS to control the Tk tests
TESTFLAGS =

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/installManPage

pre-test:
	mkdir -p ${TESTHOME}

post-install:
	${INSTALL_DATA} ${WRKDIST}/license.terms ${PREFIX}/lib/tcl/tk8.6/man
.if ${NO_SHARED_LIBS:L} == "no"
	ln -s libtk86.a ${PREFIX}/lib/libtk86_pic.a
	ln -s libtkstub86.a ${PREFIX}/lib/libtkstub86_pic.a
.endif

.include <bsd.port.mk>
