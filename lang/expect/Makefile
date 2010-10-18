# $OpenBSD: Makefile,v 1.54 2010/10/18 19:20:41 espie Exp $

COMMENT=	sophisticated scripter based on Tcl/Tk

DISTNAME=	expect-5.44.1.15
SHARED_LIBS=	expect544115 0.0
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=expect/}

HOMEPAGE=	http://expect.nist.gov/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c util m

FLAVORS=	no_tk
FLAVOR?=

SEPARATE_BUILD=	simple
AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=autoconf no-autoheader gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}
USE_GROFF =	Yes

CFLAGS+=	-I${X11BASE}/include
CONFIGURE_ARGS+=--with-tclconfig="${MODTCL_LIBDIR}" \
		--with-tclinclude="${MODTCL_INCDIR}"
CONFIGURE_ENV+=	LIBexpect544115_VERSION=${LIBexpect544115_VERSION}
MAKE_FLAGS=	LIB_RUNTIME_DIR=$(TRUEPREFIX)/lib/${DISTNAME:S/-//}

.if !${FLAVOR:L:Mno_tk}
MODULES=	x11/tk
WANTLIB+= X11 z pthread-stubs xcb
WANTLIB+= Xau Xdmcp Xext Xft Xrender Xss expat fontconfig freetype
MAKE_FLAGS+=	TK=Yes
LIB_DEPENDS+=	${MODTK_LIB_DEPENDS}
CONFIGURE_ARGS+=--with-tk="${MODTK_LIBDIR}" \
		--with-tkinclude="${MODTK_INCDIR}"
.else
MODULES=	lang/tcl
LIB_DEPENDS+=	${MODTCL_LIB_DEPENDS}
CONFIGURE_ARGS+=--with-tk=no
.endif

REGRESS_TARGET=	test

.include <bsd.port.mk>
