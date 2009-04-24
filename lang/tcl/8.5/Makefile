# $OpenBSD: Makefile,v 1.7 2009/04/24 21:13:13 sthen Exp $

COMMENT =		Tool Command Language

V =			8.5.7
DISTNAME =		tcl${V}
PKGNAME =		tcl-${V}
SHARED_LIBS =		tcl85 0.4
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
MAKE_FLAGS +=		TCL_BUILD_EXP_FILE="libtcl85.a" \
			TCL_EXP_FILE="libtcl85.a"
.endif

FAKE_FLAGS =		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_LIBRARY="${INSTALL_DATA}" \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			CONFIG_INSTALL_DIR="${WRKINST}${TRUEPREFIX}/lib/tcl8.5"

REGRESS_FLAGS =		HOME=${TESTHOME}
SEPARATE_BUILD =	concurrent
CONFIGURE_STYLE =	gnu old
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--includedir="${PREFIX}/include/tcl8.5" \
			--mandir="${PREFIX}/lib/tcl8.5/man" \
			--sysconfdir="${SYSCONFDIR}" \
			--enable-man-symlinks \
			--disable-rpath

CONFIGURE_ENV +=	SHLIB_VERSION="${LIBtcl85_VERSION}"

# Needs a full network connection to run?
#REGRESS_IS_INTERACTIVE=Yes

FLAVORS =		threaded
FLAVOR ?=

.if ${FLAVOR:L:Mthreaded}
CONFIGURE_ARGS +=	--enable-threads
WANTLIB +=		pthread
.endif

WRKSRC =		${WRKDIST}/unix
REGRESS_TARGET =	test

TESTHOME =		${WRKDIR}/testhome
DOCDIR =		${PREFIX}/share/doc/tcltk8.5

pre-regress:
	@mkdir -p ${TESTHOME}

pre-configure:
	cp ${FILESDIR}/README.OpenBSD ${WRKBUILD}
	${SUBST_CMD} ${WRKBUILD}/README.OpenBSD

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD ${DOCDIR}
.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
	ln -s libtcl85.a ${PREFIX}/lib/libtcl85_pic.a
	ln -s libtclstub85.a ${PREFIX}/lib/libtclstub85_pic.a
.endif

.include <bsd.port.mk>
