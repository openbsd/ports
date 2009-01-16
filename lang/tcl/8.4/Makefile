# $OpenBSD: Makefile,v 1.22 2009/01/16 00:02:13 sthen Exp $

COMMENT =		Tool Command Language

V =			8.4.19
DISTNAME =		tcl${V}
PKGNAME =		tcl-${V}

SHARED_LIBS =		tcl84 1.1

CATEGORIES =		lang lang/tcl

HOMEPAGE =		http://www.tcl.tk/

MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
DISTFILES =		${DISTNAME}-src.tar.gz

.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
MAKE_FLAGS +=		TCL_BUILD_EXP_FILE="libtcl84.a" \
			TCL_EXP_FILE="libtcl84.a"
.endif

FAKE_FLAGS =		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_LIBRARY="${INSTALL_DATA}" \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}"

REGRESS_FLAGS =		HOME=${TESTHOME}

SEPARATE_BUILD =	concurrent

AUTOCONF_VERSION =	2.13
CONFIGURE_STYLE =	autoconf no-autoheader old
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--includedir="${LOCALBASE}/include/tcl8.4" \
			--mandir="${LOCALBASE}/lib/tcl8.4/man" \
			--sysconfdir="${SYSCONFDIR}" \
			--enable-man-symlinks

CONFIGURE_ENV +=	SHLIB_VERSION="${LIBtcl84_VERSION}" \
			CFLAGS=""

# Needs a full network connection to run?
#REGRESS_IS_INTERACTIVE=Yes

WRKSRC =		${WRKDIST}/unix
REGRESS_TARGET =	test

TESTHOME =		${WRKDIR}/testhome

pre-regress:
	@mkdir -p ${TESTHOME}

post-install:
.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
	ln -s libtcl84.a ${PREFIX}/lib/libtcl84_pic.a
	ln -s libtclstub84.a ${PREFIX}/lib/libtclstub84_pic.a
.endif

.include <bsd.port.mk>
