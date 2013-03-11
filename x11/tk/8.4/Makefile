# $OpenBSD: Makefile,v 1.28 2013/03/11 11:46:16 espie Exp $

COMMENT =		graphical toolkit for Tcl

DISTNAME =		tk8.4.19
PKGNAME =		tk-8.4.19
REVISION =		3
SHARED_LIBS =		tk84 1.1
CATEGORIES =		x11 x11/tk
HOMEPAGE =		http://www.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		X11 c m tcl84

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
DISTFILES =		${DISTNAME}-src.tar.gz
LIB_DEPENDS =		tcl-8.4.19:lang/tcl/8.4

MAKE_FLAGS +=		TK_LIBRARY='$$(prefix)/lib/tcl/tk$$(VERSION)'

FAKE_FLAGS =		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_LIBRARY="${INSTALL_DATA}" \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			TK_PKG_DIR='tcl/tk$$(VERSION)'

TEST_FLAGS =		HOME=${TESTHOME}
SEPARATE_BUILD =	Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	autoconf no-autoheader old

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--includedir="${LOCALBASE}/include/tk8.4" \
			--mandir="${LOCALBASE}/man/tk8.4" \
			--sysconfdir="${SYSCONFDIR}" \
			--enable-man-symlinks \
			--with-tcl="${LOCALBASE}/lib/tcl/tcl8.4"

CONFIGURE_ENV +=	SHLIB_VERSION="${LIBtk84_VERSION}" \
			EXTRA_INSTALL="install-private-headers" \
			EXTRA_CC_SWITCHES="-I${LOCALBASE}/include/tcl8.4"

AUTOCONF_VERSION =	2.13

.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
ALL_TARGET =		all libtk84.a
CONFIGURE_ENV +=	EXTRA_INSTALL_BINARIES='@echo "Installing libtk84.a to $$(LIB_INSTALL_DIR)/" \
			&& $$(INSTALL_DATA) libtk84.a $$(LIB_INSTALL_DIR)/libtk84.a \
			&& (cd $$(LIB_INSTALL_DIR) ; $$(RANLIB) libtk84.a)'
.endif

TEST_IS_INTERACTIVE = x11
WRKSRC =		${WRKDIST}/unix
TEST_TARGET =	test

TESTHOME =		${WRKDIR}/testhome

pre-test:
	@mkdir -p ${TESTHOME}

post-install:
	${INSTALL_DATA} ${WRKDIST}/license.terms ${PREFIX}/man/tk8.4
.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
	ln -s libtk84.a ${PREFIX}/lib/libtk84_pic.a
	ln -s libtkstub84.a ${PREFIX}/lib/libtkstub84_pic.a
.endif

.include <bsd.port.mk>
