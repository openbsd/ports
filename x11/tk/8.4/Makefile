# $OpenBSD: Makefile,v 1.17 2009/08/11 08:42:09 ajacoutot Exp $

COMMENT =		graphical toolkit for Tcl

V =			8.4.19
DISTNAME =		tk${V}
PKGNAME =		tk-${V}p0

SHARED_LIBS =		tk84 1.1

CATEGORIES =		x11 x11/tk

HOMEPAGE =		http://www.tcl.tk/

MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		X11 c m pthread-stubs xcb

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
DISTFILES =		${DISTNAME}-src.tar.gz

LIB_DEPENDS =           tcl84:tcl-${V}:lang/tcl/8.4

.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
MAKE_FLAGS +=		TK_BUILD_EXP_FILE="libtk84.a" \
			TK_EXP_FILE="libtk84.a"
.endif

FAKE_FLAGS =		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_LIBRARY="${INSTALL_DATA}" \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}"

REGRESS_FLAGS =		HOME=${TESTHOME} \
			DISPLAY=${DISPLAY} \
			XAUTHORITY=${XAUTHORITY}

SEPARATE_BUILD =	concurrent
USE_X11 =		Yes

AUTOCONF_VERSION =	2.13
CONFIGURE_STYLE =	autoconf no-autoheader old
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--includedir="${LOCALBASE}/include/tk8.4" \
			--mandir="${LOCALBASE}/lib/tk8.4/man" \
			--sysconfdir="${SYSCONFDIR}" \
			--enable-man-symlinks \
			--with-tcl="${LOCALBASE}/lib/tcl8.4"

CONFIGURE_ENV +=	SHLIB_VERSION="${LIBtk84_VERSION}" \
			CFLAGS=""

# This regression test wants an X11 display
REGRESS_IS_INTERACTIVE =Yes

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
	ln -s libtk84.a ${PREFIX}/lib/libtk84_pic.a
	ln -s libtkstub84.a ${PREFIX}/lib/libtkstub84_pic.a
.endif

.include <bsd.port.mk>
