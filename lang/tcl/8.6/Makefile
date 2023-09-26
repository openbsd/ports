COMMENT =		Tool Command Language

P =			13
DISTNAME =		tcl8.6.${P}
PKGNAME =		tcl-8.6.${P}
PKGSTEM = 		tcl-8.6
SHARED_LIBS =		tcl86 1.${P}
CATEGORIES =		lang lang/tcl
HOMEPAGE =		http://www.tcl-lang.org/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c m pthread z

SITES =		 	${SITE_SOURCEFORGE:=tcl/}
DISTFILES =		tcl-core8.6.${P}-src.tar.gz

MAKE_FLAGS =		TCL_LIBRARY='$$(prefix)/lib/tcl/tcl$$(VERSION)'

FAKE_FLAGS =		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_LIBRARY="${INSTALL_DATA}" \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			CONFIG_INSTALL_DIR='$$(SCRIPT_INSTALL_DIR)' \
			MODULE_INSTALL_DIR='$$(SCRIPT_INSTALL_DIR)/modules' \
			INSTALL_PACKAGE_TARGETS=''

TEST_FLAGS =		HOME=${TESTHOME} TESTFLAGS="${TESTFLAGS}"
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu old

CONFIGURE_ARGS +=	--includedir="${PREFIX}/include/tcl8.6" \
			--mandir="${PREFIX}/lib/tcl/tcl8.6/man" \
			--sysconfdir="${SYSCONFDIR}" \
			--enable-man-symlinks \
			--disable-rpath \
			TCL_PACKAGE_PATH="${PREFIX}/lib/tcl" \
			SHLIB_VERSION="${LIBtcl86_VERSION}"

WRKSRC =		${WRKDIST}/unix
ALL_TARGET =		binaries
TEST_TARGET =		test-tcl

TESTHOME =		${WRKDIR}/testhome

# Use TESTFLAGS to control the Tcl tests
TESTFLAGS =

# This test will always fail;
# OpenBSD won't allow overwriting a read-only directory.
TESTFLAGS += -skip 'fCmd-9.4.b'

pre-configure:
	@${SUBST_CMD} ${WRKDIST}/library/init.tcl

pre-test:
	mkdir -p ${TESTHOME}

.include <bsd.port.mk>
