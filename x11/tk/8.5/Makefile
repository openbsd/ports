# $OpenBSD: Makefile,v 1.33 2013/09/20 10:10:04 stu Exp $

COMMENT =		graphical toolkit for Tcl

DISTNAME =		tk8.5.15
PKGNAME =		tk-8.5.15
SHARED_LIBS =		tk85 0.12
CATEGORIES =		x11 x11/tk
HOMEPAGE =		http://www.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		X11 Xext Xft Xss c m tcl85

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
DISTFILES =		${DISTNAME}-src.tar.gz

MAKE_FLAGS +=		TK_LIBRARY='$$(prefix)/lib/tcl/tk$$(VERSION)' \
			TCL_GENERIC_DIR='$$(GENERIC_DIR)' \
			TCL_PLATFORM_DIR='$$(GENERIC_DIR)'

FAKE_FLAGS =		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_LIBRARY="${INSTALL_DATA}" \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			CONFIG_INSTALL_DIR='$$(SCRIPT_INSTALL_DIR)' \
			MAN1_INSTALL_DIR='$$(MAN_INSTALL_DIR)/cat1' \
			MAN3_INSTALL_DIR='$$(MAN_INSTALL_DIR)/cat3' \
			MANN_INSTALL_DIR='$$(MAN_INSTALL_DIR)/catn' \
			DEMO_INSTALL_DIR="${WRKINST}${TRUEPREFIX}/share/examples/tk8.5" \
			TK_PKG_DIR='tcl/tk$$(VERSION)'

TEST_FLAGS =		HOME=${TESTHOME} TESTFLAGS="${TESTFLAGS}"
SEPARATE_BUILD =	Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu old

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--includedir="${PREFIX}/include/tk8.5" \
			--mandir="${PREFIX}/lib/tcl/tk8.5/man" \
			--sysconfdir="${SYSCONFDIR}" \
			--enable-man-symlinks \
			--disable-rpath \
			--with-tcl="${LOCALBASE}/lib/tcl/tcl8.5" \
			EXTRA_INSTALL="install-private-headers" \
			EXTRA_CC_SWITCHES="-I${LOCALBASE}/include/tcl8.5" \
			SHLIB_VERSION="${LIBtk85_VERSION}"

FLAVORS =		threaded
FLAVOR ?=

.if ${FLAVOR:Mthreaded}
CONFIGURE_ARGS +=	--enable-threads
WANTLIB +=		pthread
LIB_DEPENDS +=		tcl->=8.5.15,<8.5.16-threaded:lang/tcl/8.5,threaded
.else
LIB_DEPENDS +=		tcl->=8.5.15,<8.5.16-!threaded:lang/tcl/8.5
.endif

.include <bsd.port.arch.mk>

.if ${NO_SHARED_LIBS:L} == "no"
ALL_TARGET =		all libtk85.a
CONFIGURE_ARGS +=	EXTRA_INSTALL_BINARIES='@echo "Installing libtk85.a to $$(LIB_INSTALL_DIR)/" \
			&& $$(INSTALL_DATA) libtk85.a $$(LIB_INSTALL_DIR)/libtk85.a \
			&& (cd $$(LIB_INSTALL_DIR) ; $$(RANLIB) libtk85.a)'
.endif

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
.if ${NO_SHARED_LIBS:L} == "no"
	ln -s libtk85.a ${PREFIX}/lib/libtk85_pic.a
	ln -s libtkstub85.a ${PREFIX}/lib/libtkstub85_pic.a
.endif

.include <bsd.port.mk>
