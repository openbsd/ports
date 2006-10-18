# $OpenBSD: Makefile,v 1.16 2006/10/18 13:10:37 naddy Exp $
# Uses pthreads (can but does not at the moment)

COMMENT=	"Tool Command Language"

VERSION=	8.4.7

DISTNAME=	tcl${VERSION}-src
PKGNAME=	tcl-${VERSION}p3
SHARED_LIBS=	tcl84 1.0
CATEGORIES=	lang lang/tcl
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tcl/}
WANTLIB=	c m

HOMEPAGE=	http://www.tcl.tk/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CFLAGS="${CFLAGS}"
FAKE_FLAGS=	INSTALL="install -c" INSTALL_ROOT="${WRKINST}" \
		BASE_INCLUDE_DIR='$$(prefix)/include/tcl$$(VERSION)' \
		INCLUDE_INSTALL_DIR='$$(INSTALL_ROOT)$$(BASE_INCLUDE_DIR)' \
		GENERIC_INCLUDE_INSTALL_DIR='$$(BASE_INCLUDE_DIR)/generic' \
		UNIX_INCLUDE_INSTALL_DIR='$$(BASE_INCLUDE_DIR)/unix' \
		MAN_INSTALL_DIR='$${INSTALL_ROOT}$$(TCL_LIBRARY)/man'

SEPARATE_BUILD=	concurrent
AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ENV=	PORTSDIR="${PORTSDIR}" \
		LIBtcl84_VERSION=${LIBtcl84_VERSION}
CONFIGURE_ARGS=	--includedir="${LOCALBASE}/include/tcl8.4"

WRKDIST=	${WRKDIR}/tcl${VERSION}/unix

INSTALL_TARGET=	install-strip
REGRESS_TARGET=	test
# Needs a full network connection to run
REGRESS_IS_INTERACTIVE=Yes
TESTHOME=${WRKDIR}/testhome
REGRESS_FLAGS=	HOME=${TESTHOME}
pre-regress:
	@mkdir -p ${TESTHOME}

post-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/tcl.m4 ${PREFIX}/share/aclocal
	ranlib ${PREFIX}/lib/libtcl84.a

.include <bsd.port.mk>
