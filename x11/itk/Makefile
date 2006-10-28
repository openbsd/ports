# $OpenBSD: Makefile,v 1.2 2006/10/28 17:52:18 steven Exp $

COMMENT=	"build mega-widgets using the Itcl object system"

VERSION=	3.3
DISTNAME=	itk${VERSION}
PKGNAME=	itk-${VERSION}p0
SHARED_LIBS=	itk33	0.0

CATEGORIES=	x11 x11/tk devel

HOMEPAGE=	http://incrtcl.sourceforge.net/itk/

MAINTAINER=	Nikns Siankin <nikns@secure.lv>

# BSD style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 tcl84

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=incrtcl/}

LIB_DEPENDS=	tk84.>=1:tk-${TK_VERSION}.*:x11/tk/${TK_VERSION} \
		itcl33::devel/itcl
RUN_DEPENDS=	:tk-${TK_VERSION}.*:x11/tk/${TK_VERSION} \
		::devel/itcl

TCL_VERSION=	8.4
TK_VERSION=	8.4
ITCL_VERSION=	3.3

SUBST_VARS=	VERSION

USE_X11=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-tcl=${LOCALBASE}/lib/tcl${TCL_VERSION} \
		--with-tk=${LOCALBASE}/lib/tk${TK_VERSION} \
		--with-itcl=${LOCALBASE}/lib/itcl${ITCL_VERSION} \
		--libdir=${LOCALBASE}/lib/itk${VERSION} \
		--includedir=${LOCALBASE}/include/itk${VERSION}

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/tcl${TCL_VERSION}/generic \
		-I${LOCALBASE}/include/tcl${TCL_VERSION}/unix \
		-I${LOCALBASE}/include/tk${TK_VERSION}/generic \
		-I${LOCALBASE}/include/tk${TK_VERSION}/unix \
		-I${LOCALBASE}/include/itcl${ITCL_VERSION}" \
		LIBitk33_VERSION=${LIBitk33_VERSION}

# This regression test wants an X11 display
REGRESS_IS_INTERACTIVE=Yes

do-regress:
	@cd ${WRKSRC} && env ITK_LIBRARY=${WRKSRC}/library \
		${PREFIX}/bin/wish${TK_VERSION} tests/all.tcl -load \
		"load ./libitk33.so.${LIBitk33_VERSION}; package require Tk"

.include <bsd.port.mk>
