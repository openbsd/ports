# $OpenBSD: Makefile,v 1.9 2002/07/19 22:25:59 pvalchev Exp $

COMMENT=	"convert HTML pages to PDF/PS format"

DISTNAME=		htmldoc-1.8.11
CATEGORIES=     	print www
NEED_VERSION=	1.474

HOMEPAGE=		http://www.easysw.com/htmldoc

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# no_x11 build is broken in this version
USE_X11=		Yes

DISTFILES=		${DISTNAME}-source${EXTRACT_SUFX}
EXTRACT_SUFX=		.zip
MASTER_SITES=		ftp://ftp.easysw.com/pub/htmldoc/1.8.11/ \
      			ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/htmldoc/1.8.11/ 

LIB_DEPENDS=		png.2::graphics/png \
			jpeg.62::graphics/jpeg \
			fltk::x11/fltk

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_ENV= 		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include"

.include <bsd.port.mk>
