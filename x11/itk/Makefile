# $OpenBSD: Makefile,v 1.4 2009/03/13 12:59:47 sthen Exp $

COMMENT=	build mega-widgets using the Itcl object system

VERSION=	3.3
DISTNAME=	itk${VERSION}
PKGNAME=	itk-${VERSION}p1
SHARED_LIBS=	itk33	0.0

CATEGORIES=	x11 devel

HOMEPAGE=	http://incrtcl.sourceforge.net/itk/

MAINTAINER=	Nikns Siankin <nikns@secure.lv>

# BSD style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/tk
WANTLIB=	X11

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=incrtcl/}

LIB_DEPENDS=	${MODTK_LIB_DEPENDS} \
		itcl33::devel/itcl
RUN_DEPENDS=	${MODTK_RUN_DEPENDS} \
		::devel/itcl

MODTCL_VERSION=	8.4
MODTK_VERSION=	8.4
ITCL_VERSION=	3.3

SUBST_VARS=	VERSION

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR} \
		--with-itcl=${LOCALBASE}/lib/itcl${ITCL_VERSION} \
		--libdir=${LOCALBASE}/lib/itk${VERSION} \
		--includedir=${LOCALBASE}/include/itk${VERSION}

CONFIGURE_ENV=	CPPFLAGS="-I${MODTCL_INCDIR}/generic \
		-I${MODTCL_INCDIR}/unix \
		-I${MODTK_INCDIR}/generic \
		-I${MODTK_INCDIR}/unix \
		-I${LOCALBASE}/include/itcl${ITCL_VERSION}" \
		LIBitk33_VERSION=${LIBitk33_VERSION}

# This regression test wants an X11 display
REGRESS_IS_INTERACTIVE=Yes

do-regress:
	@cd ${WRKSRC} && env ITK_LIBRARY=${WRKSRC}/library \
		${MODTK_BIN} tests/all.tcl -load \
		"load ./libitk33.so.${LIBitk33_VERSION}; package require Tk"

.include <bsd.port.mk>
