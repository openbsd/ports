# $OpenBSD: Makefile,v 1.50 2009/08/10 17:31:07 kili Exp $

COMMENT=	sophisticated scripter based on Tcl/Tk

DISTNAME=	expect-5.43.0
PKGNAME=	${DISTNAME}p2
SHARED_LIBS=	expect543 1.2
CATEGORIES=	lang
MASTER_SITES=	http://expect.nist.gov/old/

HOMEPAGE=	http://expect.nist.gov/

# PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c util m

FLAVORS=	no_tk
FLAVOR?=

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}

MODTCL_VERSION=	8.4
MODTK_VERSION=	8.4

CONFIGURE_ARGS+=--with-tclconfig="${MODTCL_LIBDIR}" \
		--with-tclinclude="${MODTCL_INCDIR}"
CONFIGURE_ENV=	LIBexpect543_VERSION=${LIBexpect543_VERSION}

.if !${FLAVOR:L:Mno_tk}
MODULES=	x11/tk
LIB_DEPENDS+=	${MODTK_LIB_DEPENDS}
CONFIGURE_ARGS+=--with-tkconfig="${MODTK_LIBDIR}" \
		--with-tkinclude="${MODTK_INCDIR}"
WANTLIB+=	X11 pthread-stubs xcb
.else
MODULES=	lang/tcl
LIB_DEPENDS+=	${MODTCL_LIB_DEPENDS}
.endif

REGRESS_TARGET=	test

DESTDIRNAME=	INSTALL_ROOT

WRKDIST=	${WRKDIR}/expect-5.43

.include <bsd.port.mk>
