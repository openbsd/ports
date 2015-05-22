# $OpenBSD: Makefile,v 1.13 2015/05/22 04:17:01 stu Exp $

COMMENT =		Tool Command Language

P =			4
DISTNAME =		tcl8.6.${P}
PKGNAME =		tcl-8.6.${P}
SHARED_LIBS =		tcl86 1.2
CATEGORIES =		lang lang/tcl
HOMEPAGE =		http://www.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

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
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu old

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--includedir="${PREFIX}/include/tcl8.6" \
			--mandir="${PREFIX}/lib/tcl/tcl8.6/man" \
			--sysconfdir="${SYSCONFDIR}" \
			--enable-man-symlinks \
			--disable-rpath \
			SHLIB_VERSION="${LIBtcl86_VERSION}"

.include <bsd.port.arch.mk>

ALL_TARGET =		binaries

.if ${NO_SHARED_LIBS:L} == "no"
ALL_TARGET +=		libtcl86.a
CONFIGURE_ARGS +=	EXTRA_INSTALL_BINARIES='@echo "Installing libtcl86.a to $$(LIB_INSTALL_DIR)/" \
			&& $$(INSTALL_DATA) libtcl86.a $$(LIB_INSTALL_DIR)/libtcl86.a \
			&& (cd $$(LIB_INSTALL_DIR) ; $$(RANLIB) libtcl86.a)'
.endif

WRKSRC =		${WRKDIST}/unix
TEST_TARGET =		test-tcl

TESTHOME =		${WRKDIR}/testhome
# Use TESTFLAGS to control the Tcl tests
TESTFLAGS =

# These tests will always fail due to assumptions that don't hold on OpenBSD.
# Skip them until they're improved.
# fCmd-9.4.b expects to be able to overwrite a read-only directory.
# http-4.14 and many socket-14.* expect certain socket errors to occur
#   later rather than sooner. Bug 2911139.
TESTFLAGS += -skip 'fCmd-9.4.b http-4.14 socket-14.*'

pre-configure:
	@${SUBST_CMD} ${WRKDIST}/library/init.tcl

pre-test:
	mkdir -p ${TESTHOME}

post-install:
	${INSTALL_DATA} ${WRKDIST}/license.terms ${PREFIX}/lib/tcl/tcl8.6/man
.if ${NO_SHARED_LIBS:L} == "no"
	ln -s libtcl86.a ${PREFIX}/lib/libtcl86_pic.a
	ln -s libtclstub86.a ${PREFIX}/lib/libtclstub86_pic.a
.endif

.include <bsd.port.mk>
