# $OpenBSD: Makefile,v 1.24 2002/12/16 16:58:12 wilfried Exp $

COMMENT=	"Fast-Light Tool Kit"

VER=		1.1.2
DISTNAME=	fltk-${VER}
CATEGORIES=	x11

HOMEPAGE=	http://www.fltk.org/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DISTFILES=	${DISTNAME}-source${EXTRACT_SUFX}
MASTER_SITES=	ftp://ftp.easysw.com/pub/fltk/${VER}/ \
		ftp://ftp2.easysw.com/pub/fltk/${VER}/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/fltk/${VER}/ \
		ftp://gd.tuwien.ac.at/hci/fltk/${VER}/

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.2::graphics/png

NO_REGRESS=	Yes
USE_X11=	Yes
CONFIGURE_STYLE=autoconf dest
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
