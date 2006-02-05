# $OpenBSD: Makefile,v 1.15 2006/02/05 16:17:13 sturm Exp $

COMMENT=	"convert HTML pages to PDF/PS format"

V=			1.8.23
DISTNAME=		htmldoc-${V}
PKGNAME=		${DISTNAME}p0
CATEGORIES=     	print www

HOMEPAGE=		http://www.easysw.com/htmldoc

MAINTAINER=		Antoine Jacoutot <ajacoutot@lphp.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		png ssl X11 m crypto c jpeg Xext z

USE_X11=		Yes

DISTFILES=		${DISTNAME}-source${EXTRACT_SUFX}
MASTER_SITES=		ftp://ftp.easysw.com/pub/htmldoc/${V}/ \
			ftp://ftp2.easysw.com/pub/htmldoc/${V}/ \
			ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/htmldoc/${V}/

LIB_DEPENDS=		fltk.1,fltk_images.1::x11/fltk

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ENV= 		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			CPPFLAGS="-I${LOCALBASE}/include"

post-extract:
	@rm -rf ${WRKSRC}/jpeg ${WRKSRC}/png ${WRKSRC}/zlib

post-configure:
	@perl -pi -e "s,\\$$\\{DESTDIR},," ${WRKSRC}/config.h

NO_REGRESS=		Yes

.include <bsd.port.mk>
