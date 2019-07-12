# $OpenBSD: Makefile,v 1.45 2019/07/12 20:47:23 sthen Exp $

COMMENT =		Tool Command Language

DISTNAME =		tcl8.5.19
PKGNAME =		tcl-8.5.19
PKGSTEM =		tcl-8.5
REVISION =		4
SHARED_LIBS =		tcl85 1.8
CATEGORIES =		lang lang/tcl
HOMEPAGE =		http://www.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
DISTFILES =		${DISTNAME}-src.tar.gz

MAKE_FLAGS =		TCL_LIBRARY='$$(prefix)/lib/tcl/tcl$$(VERSION)'

FAKE_FLAGS =		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_LIBRARY="${INSTALL_DATA}" \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			CONFIG_INSTALL_DIR='$$(SCRIPT_INSTALL_DIR)'

TEST_FLAGS =		HOME=${TESTHOME} TESTFLAGS="${TESTFLAGS}"
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu old

CONFIGURE_ARGS +=	--includedir="${PREFIX}/include/tcl8.5" \
			--mandir="${PREFIX}/lib/tcl/tcl8.5/man" \
			--sysconfdir="${SYSCONFDIR}" \
			--enable-man-symlinks \
			--disable-rpath \
			EXTRA_INSTALL="install-private-headers" \
			EXTRA_INSTALL_BINARIES='@echo "Installing libtcl85.a to $$(LIB_INSTALL_DIR)/" \
			&& $$(INSTALL_DATA) libtcl85.a $$(LIB_INSTALL_DIR)/libtcl85.a \
			&& (cd $$(LIB_INSTALL_DIR) ; $$(RANLIB) libtcl85.a)' \
			SHLIB_VERSION="${LIBtcl85_VERSION}"

ALL_TARGET =		all libtcl85.a

WRKSRC =		${WRKDIST}/unix
TEST_TARGET =		test

TESTHOME =		${WRKDIR}/testhome
# Use TESTFLAGS to control the Tcl tests
TESTFLAGS =

# These tests will always fail due to assumptions that don't hold on OpenBSD.
# Skip them until they're improved.
# fCmd-9.4.b expects to be able to overwrite a read-only directory.
# http-4.14, socket-14.14 expect certain socket errors to occur later rather than sooner. Bug 2911139.
# cmdAH-2.6.3 will pass functionally but test has bad result comparison.
# stack-3.1 is very resource-hungry and usually fails.
TESTFLAGS += -skip 'fCmd-9.4.b http-4.14 socket-14.14 cmdAH-2.6.3 stack-3.1'

pre-configure:
	@${SUBST_CMD} ${WRKDIST}/library/init.tcl

pre-test:
	mkdir -p ${TESTHOME}

post-install:
	${INSTALL_DATA} ${WRKDIST}/license.terms ${PREFIX}/lib/tcl/tcl8.5/man
	ln -s libtcl85.a ${PREFIX}/lib/libtcl85_pic.a
	ln -s libtclstub85.a ${PREFIX}/lib/libtclstub85_pic.a

.include <bsd.port.mk>
