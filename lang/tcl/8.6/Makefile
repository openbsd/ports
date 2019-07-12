# $OpenBSD: Makefile,v 1.23 2019/07/12 20:47:23 sthen Exp $

COMMENT =		Tool Command Language

P =			8
DISTNAME =		tcl8.6.${P}
PKGNAME =		tcl-8.6.${P}
PKGSTEM = 		tcl-8.6
SHARED_LIBS =		tcl86 1.${P}
CATEGORIES =		lang lang/tcl
HOMEPAGE =		http://www.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>
REVISION =		2

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c m pthread z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
DISTFILES =		tcl-core8.6.${P}-src.tar.gz

MAKE_FLAGS =		TCL_LIBRARY='$$(prefix)/lib/tcl/tcl$$(VERSION)'

FAKE_FLAGS =		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_LIBRARY="${INSTALL_DATA}" \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			CONFIG_INSTALL_DIR='$$(SCRIPT_INSTALL_DIR)' \
			INSTALL_PACKAGE_TARGETS=''

TEST_FLAGS =		HOME=${TESTHOME} TESTFLAGS="${TESTFLAGS}"
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu old

CONFIGURE_ARGS +=	--includedir="${PREFIX}/include/tcl8.6" \
			--mandir="${PREFIX}/lib/tcl/tcl8.6/man" \
			--sysconfdir="${SYSCONFDIR}" \
			--enable-man-symlinks \
			--disable-rpath \
			SHLIB_VERSION="${LIBtcl86_VERSION}"

WRKSRC =		${WRKDIST}/unix
ALL_TARGET =		binaries
TEST_TARGET =		test-tcl

TESTHOME =		${WRKDIR}/testhome
# Use TESTFLAGS to control the Tcl tests
TESTFLAGS =

# These tests will always fail due to assumptions that don't hold on OpenBSD.
# Skip them until they're improved.
# fCmd-9.4.b expects to be able to overwrite a read-only directory.
# Many socket-14.* expect certain socket errors to occur
#   later rather than sooner. Bug 2911139.
TESTFLAGS += -skip 'fCmd-9.4.b socket-14.*'

pre-configure:
	@${SUBST_CMD} ${WRKDIST}/library/init.tcl

pre-test:
	mkdir -p ${TESTHOME}

.include <bsd.port.mk>
