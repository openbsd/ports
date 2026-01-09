COMMENT =		Tool Command Language

REVISION=0
P =			3

DISTNAME =		tcl9.0.${P}
PKGNAME =		tcl-9.0.${P}
PKGSTEM = 		tcl-9
SHARED_LIBS =		tcl90 0.${P}

CATEGORIES =		lang lang/tcl
HOMEPAGE =		http://www.tcl-lang.org/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c m pthread z

SITES =			${SITE_SOURCEFORGE:=tcl/}
DISTFILES =		tcl-core9.0.${P}-src.tar.gz

MAKE_FLAGS =		TCL_LIBRARY='$$(prefix)/lib/tcl/tcl$$(MAJOR_VERSION)'

FAKE_FLAGS =		INSTALL_PROGRAM='${INSTALL_PROGRAM}' \
			INSTALL_LIBRARY='$$(INSTALL_DATA)' \
			CONFIG_INSTALL_DIR='$$(SCRIPT_INSTALL_DIR)' \
			MODULE_INSTALL_DIR='$$(SCRIPT_INSTALL_DIR)/modules' \
			INSTALL_PACKAGE_TARGETS=''

TEST_FLAGS =		HOME=${TESTHOME} TESTFLAGS="${TESTFLAGS}"

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu old

CONFIGURE_ARGS =	--includedir='${PREFIX}/include/tcl9' \
			--mandir='${PREFIX}/lib/tcl/tcl9/man' \
			--sysconfdir='${SYSCONFDIR}' \
			--enable-man-symlinks \
			--disable-rpath \
			--disable-zipfs \
			TCL_PACKAGE_PATH='${PREFIX}/lib/tcl' \
			SHLIB_VERSION='${LIBtcl90_VERSION}'

WRKSRC =		${WRKDIST}/unix
ALL_TARGET =		binaries
TEST_TARGET =		test-tcl

TESTHOME =		${WRKDIR}/testhome

# Use TESTFLAGS to control the Tcl tests
TESTFLAGS =

# The fCmd-9.4 test will always fail;
# OpenBSD won't allow overwriting a read-only directory.
TESTFLAGS += -skip 'fCmd-9.4'

pre-configure:
	@${SUBST_CMD} ${WRKDIST}/library/init.tcl

pre-test:
	mkdir -p ${TESTHOME}

.include <bsd.port.mk>
