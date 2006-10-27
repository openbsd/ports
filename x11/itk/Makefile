# $OpenBSD: Makefile,v 1.1.1.1 2006/10/27 07:19:34 steven Exp $

COMMENT=	"build mega-widgets using the Itcl object system"

VERSION=	3.3
DISTNAME=	itk${VERSION}
PKGNAME=	itk-${VERSION}
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

LIB_DEPENDS=	tk84.>=1:tk-8.4.*:x11/tk/8.4 \
		itcl33::devel/itcl
RUN_DEPENDS=	:tk-8.4.*:x11/tk/8.4 \
		::devel/itcl

USE_X11=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-tcl=${LOCALBASE}/lib/tcl8.4 \
		--with-tk=${LOCALBASE}/lib/tk8.4 \
		--with-itcl=${LOCALBASE}/lib/itcl \
		--libdir=${LOCALBASE}/lib/itk \
		--includedir=${LOCALBASE}/include/itk

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/tcl8.4/generic \
		-I${LOCALBASE}/include/tcl8.4/unix \
		-I${LOCALBASE}/include/tk8.4/generic \
		-I${LOCALBASE}/include/tk8.4/unix \
		-I${LOCALBASE}/include/itcl" \
		LIBitk33_VERSION=${LIBitk33_VERSION}

# This regression test wants an X11 display
REGRESS_IS_INTERACTIVE=Yes

do-regress:
	@cd ${WRKSRC} && ITK_LIBRARY=${WRKSRC}/library \
		${PREFIX}/bin/wish8.4 tests/all.tcl -load \
		"load ./libitk33.so.${LIBitk33_VERSION}; package require Tk"

.include <bsd.port.mk>
