# $OpenBSD: Makefile,v 1.18 2006/10/27 12:53:01 ajacoutot Exp $

COMMENT=	"convert HTML pages to PDF/PS format"

V=			1.8.27
DISTNAME=		htmldoc-${V}
PKGNAME=		${DISTNAME}p0
CATEGORIES=     	print www

HOMEPAGE=		http://www.htmldoc.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		png ssl X11 m crypto c jpeg Xext z Xpm

USE_X11=		Yes

DISTFILES=		${DISTNAME}-source${EXTRACT_SUFX}
MASTER_SITES=		ftp://ftp.easysw.com/pub/htmldoc/${V}/ \
			ftp://ftp2.easysw.com/pub/htmldoc/${V}/ \
			ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/htmldoc/${V}/ \
			ftp://ftp.rz.tu-bs.de/pub/mirror/ftp.easysw.com/ftp/pub/htmldoc/${V}/

LIB_DEPENDS=		fltk.>=1,fltk_images.>=1::x11/fltk

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ENV= 		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			CPPFLAGS="-I${LOCALBASE}/include"
PORTHOME=		${WRKDIST}

post-extract:
	@rm -rf ${WRKSRC}/jpeg ${WRKSRC}/png ${WRKSRC}/zlib

post-configure:
	@perl -pi -e "s,\\$$\\{DESTDIR},," ${WRKSRC}/config.h

NO_REGRESS=		Yes

.include <bsd.port.mk>
