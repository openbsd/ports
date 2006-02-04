# $OpenBSD: Makefile,v 1.16 2006/02/04 23:50:20 steven Exp $
# $FreeBSD: Makefile,v 1.4 1997/12/01 16:50:49 pst Exp $

COMMENT=	"Tool Command Language"

DISTNAME=	tcl8.0.5
PKGNAME=	tcl-8.0.5
SHARED_LIBS=	tcl80 1.5
CATEGORIES=	lang lang/tcl
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tcl/}

HOMEPAGE=	http://dev.scriptics.com/software/tcltk/

MAINTAINER=	Niklas Hallqvist <niklas@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

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
CONFIGURE_ENV=  PORTSDIR="${PORTSDIR}" \
		LIBtcl80_VERSION=${LIBtcl80_VERSION}

WRKDIST=	${WRKDIR}/${DISTNAME}/unix
REGRESS_TARGET=	test
TESTHOME=${WRKDIR}/testhome
REGRESS_FLAGS=	HOME=${TESTHOME}
# Needs a full network connection to run
REGRESS_IS_INTERACTIVE=Yes
pre-regress:
	mkdir -p ${TESTHOME}

post-install:
	@strip ${PREFIX}/bin/tclsh8.0

.include <bsd.port.mk>
