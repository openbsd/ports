# $OpenBSD: Makefile,v 1.25 2010/09/22 12:50:03 ajacoutot Exp $

COMMENT=	convert HTML pages to PDF/PS format

V=			1.8.27
DISTNAME=		htmldoc-${V}
CATEGORIES=     	print www

REVISION=		5

HOMEPAGE=		http://www.htmldoc.org/

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto m ssl z jpeg png

DISTFILES=		${DISTNAME}-source${EXTRACT_SUFX}
MASTER_SITES=		ftp://ftp.easysw.com/pub/htmldoc/${V}/ \
			ftp://ftp2.easysw.com/pub/htmldoc/${V}/ \
			ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/htmldoc/${V}/ \
			ftp://ftp.rz.tu-bs.de/pub/mirror/ftp.easysw.com/ftp/pub/htmldoc/${V}/

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--without-gui
LIB_DEPENDS=		::graphics/jpeg \
			::graphics/png
.else
LIB_DEPENDS=		::x11/fltk
WANTLIB+=		X11 Xau Xdmcp Xext Xpm fltk fltk_images pthread
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
