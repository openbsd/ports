# $OpenBSD: Makefile,v 1.23 2009/08/10 06:34:09 kili Exp $

COMMENT=	convert HTML pages to PDF/PS format

V=			1.8.27
DISTNAME=		htmldoc-${V}
PKGNAME=		${DISTNAME}p3
CATEGORIES=     	print www

HOMEPAGE=		http://www.htmldoc.org/

MAINTAINER=		Benoit Lecocq <blq@arcane-labs.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto m ssl z

DISTFILES=		${DISTNAME}-source${EXTRACT_SUFX}
MASTER_SITES=		ftp://ftp.easysw.com/pub/htmldoc/${V}/ \
			ftp://ftp2.easysw.com/pub/htmldoc/${V}/ \
			ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/htmldoc/${V}/ \
			ftp://ftp.rz.tu-bs.de/pub/mirror/ftp.easysw.com/ftp/pub/htmldoc/${V}/

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--without-gui
LIB_DEPENDS=		jpeg.>=62::graphics/jpeg \
			png.>=2::graphics/png
.else
LIB_DEPENDS=		fltk.>=1,fltk_images.>=1::x11/fltk
WANTLIB+=		X11 Xau Xdmcp Xext Xpm jpeg png pthread-stubs xcb
USE_X11=		Yes
.endif

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ENV= 		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include \
				-I${LOCALBASE}/include/libpng" \
			CPPFLAGS="-I${LOCALBASE}/include"
PORTHOME=		${WRKDIR}

post-extract:
	@rm -rf ${WRKSRC}/jpeg ${WRKSRC}/png ${WRKSRC}/zlib

post-configure:
	@perl -pi -e "s,\\$$\\{DESTDIR},," ${WRKSRC}/config.h

NO_REGRESS=		Yes

.include <bsd.port.mk>
