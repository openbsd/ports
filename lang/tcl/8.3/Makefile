# $OpenBSD: Makefile,v 1.18 2002/12/04 21:06:31 naddy Exp $
# Uses pthreads (can but does not at the moment)

COMMENT=	"Tool Command Language"

VERSION=	8.3.5

DISTNAME=	tcl${VERSION}-src
PKGNAME=	tcl-${VERSION}
CATEGORIES=	lang lang/tcl
MASTER_SITES=	${MASTER_SITE_TCLTK:=tcl8_3/}

HOMEPAGE=	http://dev.scriptics.com/software/tcltk/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

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
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
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
	ranlib ${PREFIX}/lib/libtcl83.a

.include <bsd.port.mk>
