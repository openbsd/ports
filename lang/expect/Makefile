# $OpenBSD: Makefile,v 1.61 2013/03/11 11:20:27 espie Exp $

COMMENT=	sophisticated scripter based on Tcl/Tk

REVISION =	0
DISTNAME=	expect-5.44.1.15
SHARED_LIBS=	expect544115 0.0
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=expect/}

HOMEPAGE=	http://expect.nist.gov/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# PD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c util m

FLAVORS=	no_tk
FLAVOR?=

SEPARATE_BUILD=	Yes
AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=autoconf no-autoheader
CONFIGURE_ARGS+=${CONFIGURE_SHARED}

CFLAGS+=	-I${X11BASE}/include
CONFIGURE_ARGS+=--with-tclconfig="${MODTCL_LIBDIR}" \
		--with-tclinclude="${MODTCL_INCDIR}"
CONFIGURE_ENV+=	LIBexpect544115_VERSION=${LIBexpect544115_VERSION} \
		CFLAGS="-I${MODTCL_INCDIR} -I${X11BASE}/include"

.if !${FLAVOR:Mno_tk}
MODULES=	x11/tk
WANTLIB+= X11 z pthread-stubs xcb
WANTLIB+= Xau Xdmcp Xext Xft Xrender Xss expat fontconfig freetype
MAKE_FLAGS+=	TK=Yes
LIB_DEPENDS +=	${MODTK_LIB_DEPENDS}
WANTLIB +=	${MODTK_WANTLIB}
CONFIGURE_ARGS+=--libdir=${MODTCL_TCLDIR} \
		--with-tk="${MODTK_LIBDIR}" \
		--with-tkinclude="${MODTK_INCDIR}"
.else
MODULES =	lang/tcl
LIB_DEPENDS +=	${MODTCL_LIB_DEPENDS}
WANTLIB +=	${MODTCL_WANTLIB}
CONFIGURE_ARGS +=--with-tk=no --libdir=${MODTCL_TCLDIR}
.endif

FAKE_FLAGS =		PKG_DIR=expect	
TEST_TARGET =	test

.include <bsd.port.mk>
