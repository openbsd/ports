# $OpenBSD: Makefile,v 1.7 2004/05/20 21:25:44 miod Exp $
# Uses pthreads (can but does not at the moment)

COMMENT=	"Tool Command Language"

VERSION=	8.4.6

DISTNAME=	tcl${VERSION}-src
PKGNAME=	tcl-${VERSION}
CATEGORIES=	lang lang/tcl
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tcl/}

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
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
CONFIGURE_ARGS+= --disable-shared
.endif
CONFIGURE_ENV=	PORTSDIR="${PORTSDIR}"

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
	ranlib ${PREFIX}/lib/libtcl84.a

.include <bsd.port.mk>
