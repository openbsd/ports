# $OpenBSD: Makefile,v 1.26 2011/01/05 16:19:48 stu Exp $

COMMENT =		Tool Command Language

DISTNAME =		tcl8.4.19
PKGNAME =		tcl-8.4.19
REVISION =		1
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

MAKE_FLAGS +=		TCL_PACKAGE_PATH='$$(prefix)/lib/tcl' \
			TCL_LIBRARY='$$(prefix)/lib/tcl/tcl$$(VERSION)'

FAKE_FLAGS =		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_LIBRARY="${INSTALL_DATA}" \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}"

REGRESS_FLAGS =		HOME=${TESTHOME}
SEPARATE_BUILD =	concurrent
USE_GROFF =		Yes
CONFIGURE_STYLE =	autoconf no-autoheader old

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--includedir="${PREFIX}/include/tcl8.4" \
			--mandir="${PREFIX}/man/tcl8.4" \
			--sysconfdir="${SYSCONFDIR}" \
			--enable-man-symlinks

CONFIGURE_ENV +=	SHLIB_VERSION="${LIBtcl84_VERSION}" \
			EXTRA_INSTALL="install-private-headers"

AUTOCONF_VERSION =	2.13

.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
ALL_TARGET =		all libtcl84.a
CONFIGURE_ENV +=	EXTRA_INSTALL_BINARIES='@echo "Installing libtcl84.a to $$(LIB_INSTALL_DIR)/" \
			&& $$(INSTALL_DATA) libtcl84.a $$(LIB_INSTALL_DIR)/libtcl84.a \
			&& (cd $$(LIB_INSTALL_DIR) ; $$(RANLIB) libtcl84.a)'
.endif

.if ${MACHINE_ARCH} == "sh"
CFLAGS +=		-O0
.endif

WRKSRC =		${WRKDIST}/unix
REGRESS_TARGET =	test

TESTHOME =		${WRKDIR}/testhome

pre-regress:
	@mkdir -p ${TESTHOME}

post-install:
	${INSTALL_DATA} ${WRKDIST}/license.terms ${PREFIX}/man/tcl8.4
.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
	ln -s libtcl84.a ${PREFIX}/lib/libtcl84_pic.a
	ln -s libtclstub84.a ${PREFIX}/lib/libtclstub84_pic.a
.endif

.include <bsd.port.mk>
