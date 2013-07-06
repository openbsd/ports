# $OpenBSD: Makefile,v 1.30 2013/07/06 11:03:44 stu Exp $

COMMENT =		Tool Command Language

DISTNAME =		tcl8.4.20
PKGNAME =		tcl-8.4.20
REVISION =		0
SHARED_LIBS =		tcl84 2.0
CATEGORIES =		lang lang/tcl
HOMEPAGE =		http://www.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
DISTFILES =		${DISTNAME}-src.tar.gz

MAKE_FLAGS +=		TCL_PACKAGE_PATH='$$(prefix)/lib/tcl' \
			TCL_LIBRARY='$$(prefix)/lib/tcl/tcl$$(VERSION)'

FAKE_FLAGS =		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_LIBRARY="${INSTALL_DATA}" \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}"

TEST_FLAGS =		HOME=${TESTHOME}
SEPARATE_BUILD =	Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	autoconf no-autoheader old

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--includedir="${PREFIX}/include/tcl8.4" \
			--mandir="${PREFIX}/lib/tcl/tcl8.4/man" \
			--sysconfdir="${SYSCONFDIR}" \
			--enable-man-symlinks \
			--disable-rpath

CONFIGURE_ENV +=	SHLIB_VERSION="${LIBtcl84_VERSION}" \
			EXTRA_INSTALL="install-private-headers"

AUTOCONF_VERSION =	2.13

.include <bsd.port.arch.mk>

.if ${NO_SHARED_LIBS:L} == "no"
ALL_TARGET =		all libtcl84.a
CONFIGURE_ENV +=	EXTRA_INSTALL_BINARIES='@echo "Installing libtcl84.a to $$(LIB_INSTALL_DIR)/" \
			&& $$(INSTALL_DATA) libtcl84.a $$(LIB_INSTALL_DIR)/libtcl84.a \
			&& (cd $$(LIB_INSTALL_DIR) ; $$(RANLIB) libtcl84.a)'
CONFIGURE_ENV +=	tcl_cv_ld_elf=yes
.endif

.if ${MACHINE_ARCH} == "sh"
CFLAGS +=		-O0
.endif

WRKSRC =		${WRKDIST}/unix
TEST_TARGET =		test

TESTHOME =		${WRKDIR}/testhome

pre-test:
	@mkdir -p ${TESTHOME}

post-install:
	${INSTALL_DATA} ${WRKDIST}/license.terms ${PREFIX}/lib/tcl/tcl8.4/man
.if ${NO_SHARED_LIBS:L} == "no"
	ln -s libtcl84.a ${PREFIX}/lib/libtcl84_pic.a
	ln -s libtclstub84.a ${PREFIX}/lib/libtclstub84_pic.a
.endif

.include <bsd.port.mk>
