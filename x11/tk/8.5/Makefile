# $OpenBSD: Makefile,v 1.9 2009/04/24 21:13:13 sthen Exp $

COMMENT =		graphical toolkit for Tcl

V =			8.5.7
DISTNAME =		tk${V}
PKGNAME =		tk-${V}
SHARED_LIBS =		tk85 0.4
CATEGORIES =		x11 x11/tk
HOMEPAGE =		http://www.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		X11 Xau Xdmcp Xext Xft Xrender Xss c expat fontconfig freetype m z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
DISTFILES =		${DISTNAME}-src.tar.gz

.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
MAKE_FLAGS +=		TK_BUILD_EXP_FILE="libtk85.a" \
			TK_EXP_FILE="libtk85.a"
.endif

FAKE_FLAGS =		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_LIBRARY="${INSTALL_DATA}" \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			CONFIG_INSTALL_DIR="${WRKINST}${TRUEPREFIX}/lib/tk8.5" \
			DEMO_INSTALL_DIR="${WRKINST}${TRUEPREFIX}/share/examples/tk8.5"

REGRESS_FLAGS =		HOME=${TESTHOME} \
			DISPLAY=${DISPLAY} \
			XAUTHORITY=${XAUTHORITY}

SEPARATE_BUILD =	concurrent
USE_X11 =		Yes
CONFIGURE_STYLE =	gnu old
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--includedir="${PREFIX}/include/tk8.5" \
			--mandir="${PREFIX}/lib/tk8.5/man" \
			--sysconfdir="${SYSCONFDIR}" \
			--enable-man-symlinks \
			--disable-rpath \
			--with-tcl="${LOCALBASE}/lib/tcl8.5"

CONFIGURE_ENV +=	SHLIB_VERSION="${LIBtk85_VERSION}"

# This regression test wants an X11 display
REGRESS_IS_INTERACTIVE =Yes

FLAVORS =		threaded
FLAVOR ?=

.if ${FLAVOR:L:Mthreaded}
CONFIGURE_ARGS +=	--enable-threads
WANTLIB +=		pthread
LIB_DEPENDS =		tcl85:tcl->=$V,<8.5.8-${FLAVOR}:lang/tcl/8.5
.else
LIB_DEPENDS =		tcl85:tcl->=$V,<8.5.8:lang/tcl/8.5
.endif

WRKSRC =		${WRKDIST}/unix
REGRESS_TARGET =	test

TESTHOME =		${WRKDIR}/testhome

pre-regress:
.for t in DISPLAY XAUTHORITY
.  if !defined($t)
	@echo "$t needs to be set to run regress"; exit 1
.  endif
.endfor
	@mkdir -p ${TESTHOME}

post-install:
.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
	ln -s libtk85.a ${PREFIX}/lib/libtk85_pic.a
	ln -s libtkstub85.a ${PREFIX}/lib/libtkstub85_pic.a
.endif

.include <bsd.port.mk>
