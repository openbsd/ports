# $OpenBSD: Makefile,v 1.20 2011/01/05 16:18:09 stu Exp $

COMMENT =		graphical toolkit for Tcl

DISTNAME =		tk8.5.9
PKGNAME =		tk-8.5.9
SHARED_LIBS =		tk85 0.6
CATEGORIES =		x11 x11/tk
HOMEPAGE =		http://www.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		X11 Xau Xdmcp Xext Xft Xrender Xss c expat fontconfig freetype m z \
			tcl85

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
DISTFILES =		${DISTNAME}-src.tar.gz

LIB_DEPENDS =		lang/tcl/8.5>=8.5.9,<8.5.10${FLAVOR:S/^/-/}

MAKE_FLAGS +=		TK_LIBRARY='$$(prefix)/lib/tcl/tk$$(VERSION)'

FAKE_FLAGS =		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_LIBRARY="${INSTALL_DATA}" \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			CONFIG_INSTALL_DIR="${WRKINST}${TRUEPREFIX}/lib/tcl/tk8.5" \
			DEMO_INSTALL_DIR="${WRKINST}${TRUEPREFIX}/share/examples/tk8.5" \
			TK_PKG_DIR='tcl/tk$$(VERSION)'

REGRESS_FLAGS =		HOME=${TESTHOME}
SEPARATE_BUILD =	concurrent
USE_GROFF =		Yes
CONFIGURE_STYLE =	autoconf no-autoheader old

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--includedir="${PREFIX}/include/tk8.5" \
			--mandir="${PREFIX}/man/tk8.5" \
			--sysconfdir="${SYSCONFDIR}" \
			--enable-man-symlinks \
			--disable-rpath \
			--with-tcl="${LOCALBASE}/lib/tcl/tcl8.5" \
			EXTRA_INSTALL="install-private-headers" \
			EXTRA_CC_SWITCHES="-I${LOCALBASE}/include/tcl8.5" \
			SHLIB_VERSION="${LIBtk85_VERSION}"

AUTOCONF_VERSION =	2.59

.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
WANTLIB +=		pthread-stubs xcb
ALL_TARGET =		all libtk85.a
CONFIGURE_ARGS +=	EXTRA_INSTALL_BINARIES='@echo "Installing libtk85.a to $$(LIB_INSTALL_DIR)/" \
			&& $$(INSTALL_DATA) libtk85.a $$(LIB_INSTALL_DIR)/libtk85.a \
			&& (cd $$(LIB_INSTALL_DIR) ; $$(RANLIB) libtk85.a)'
.endif

REGRESS_IS_INTERACTIVE = x11

FLAVORS =		threaded
FLAVOR ?=

.if ${FLAVOR:L:Mthreaded}
CONFIGURE_ARGS +=	--enable-threads
WANTLIB +=		pthread
.endif

WRKSRC =		${WRKDIST}/unix
REGRESS_TARGET =	test

TESTHOME =		${WRKDIR}/testhome

pre-regress:
	mkdir -p ${TESTHOME}

post-install:
	${INSTALL_DATA} ${WRKDIST}/license.terms ${PREFIX}/man/tk8.5
.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
	ln -s libtk85.a ${PREFIX}/lib/libtk85_pic.a
	ln -s libtkstub85.a ${PREFIX}/lib/libtkstub85_pic.a
.endif

.include <bsd.port.mk>
