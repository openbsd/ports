# $OpenBSD: Makefile,v 1.12 2002/10/28 13:40:41 naddy Exp $

COMMENT=	"convert HTML pages to PDF/PS format"

V=			1.8.20
DISTNAME=		htmldoc-${V}
CATEGORIES=     	print www

HOMEPAGE=		http://www.easysw.com/htmldoc

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes

DISTFILES=		${DISTNAME}-1-source${EXTRACT_SUFX}
MASTER_SITES=		ftp://ftp.easysw.com/pub/htmldoc/${V}/ \
			ftp://ftp2.easysw.com/pub/htmldoc/${V}/ \
			ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/htmldoc/${V}/

LIB_DEPENDS=		fltk.1,fltk_images.1::x11/fltk

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ENV= 		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include"

post-extract:
	@rm -rf ${WRKSRC}/jpeg ${WRKSRC}/png ${WRKSRC}/zlib

NO_REGRESS=		Yes

.include <bsd.port.mk>
