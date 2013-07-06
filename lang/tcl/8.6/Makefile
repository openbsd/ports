# $OpenBSD: Makefile,v 1.4 2013/07/06 11:05:30 stu Exp $

COMMENT =		Tool Command Language

DISTNAME =		tcl8.6.0
PKGNAME =		tcl-8.6.0
REVISION =		1
SHARED_LIBS =		tcl86 0.0
CATEGORIES =		lang lang/tcl
HOMEPAGE =		http://www.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
DISTFILES =		tcl-core8.6.0-src.tar.gz

MAKE_FLAGS +=		TCL_PACKAGE_PATH='$$(prefix)/lib/tcl' \
			TCL_LIBRARY='$$(prefix)/lib/tcl/tcl$$(VERSION)'

FAKE_FLAGS =		INSTALL_PACKAGE_TARGETS='' \
			CONFIG_INSTALL_DIR='$$(SCRIPT_INSTALL_DIR)' \
			MAN1_INSTALL_DIR='$$(MAN_INSTALL_DIR)/cat1' \
			MAN3_INSTALL_DIR='$$(MAN_INSTALL_DIR)/cat3' \
			MANN_INSTALL_DIR='$$(MAN_INSTALL_DIR)/catn'

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
			EXTRA_INSTALL="install-private-headers" \
			SHLIB_VERSION="${LIBtcl86_VERSION}"

.include <bsd.port.arch.mk>

.if ${NO_SHARED_LIBS:L} == "no"
ALL_TARGET =		binaries libtcl86.a
CONFIGURE_ARGS +=	EXTRA_INSTALL_BINARIES='@echo "Installing libtcl86.a to $$(LIB_INSTALL_DIR)/" \
			&& $$(INSTALL_DATA) libtcl86.a $$(LIB_INSTALL_DIR)/libtcl86.a \
			&& (cd $$(LIB_INSTALL_DIR) ; $$(RANLIB) libtcl86.a)'
CONFIGURE_ARGS +=	tcl_cv_ld_elf=yes
.else
ALL_TARGET =		binaries
.endif

WRKSRC =		${WRKDIST}/unix
TEST_TARGET =		test-tcl
SUBST_VARS +=		_README_DIR

TESTHOME =		${WRKDIR}/testhome
# Use TESTFLAGS to control the Tcl tests
TESTFLAGS =

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/installManPage

pre-test:
	mkdir -p ${TESTHOME}

post-install:
	${INSTALL_DATA} ${WRKDIST}/license.terms ${PREFIX}/lib/tcl/tcl8.6/man
.if ${NO_SHARED_LIBS:L} == "no"
	ln -s libtcl86.a ${PREFIX}/lib/libtcl86_pic.a
	ln -s libtclstub86.a ${PREFIX}/lib/libtclstub86_pic.a
.endif

.include <bsd.port.mk>
