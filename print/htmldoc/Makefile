# $OpenBSD: Makefile,v 1.30 2013/03/11 11:37:54 espie Exp $

COMMENT=	convert HTML pages to PDF/PS format

V=			1.8.27
DISTNAME=		htmldoc-${V}
CATEGORIES=     	print www

REVISION=		6

HOMEPAGE=		http://www.htmldoc.org/

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv2 with OpenSSL exception.
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m ssl z jpeg png

DISTFILES=		${DISTNAME}-source${EXTRACT_SUFX}
MASTER_SITES=		ftp://ftp.easysw.com/pub/htmldoc/${V}/ \
			ftp://ftp2.easysw.com/pub/htmldoc/${V}/ \
			ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/htmldoc/${V}/ \
			ftp://ftp.rz.tu-bs.de/pub/mirror/ftp.easysw.com/ftp/pub/htmldoc/${V}/

USE_GROFF =		Yes

LIB_DEPENDS=		graphics/jpeg \
			graphics/png

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--without-gui
CONFIGURE_ENV= 		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include \
				-I${LOCALBASE}/include/libpng" \
			CPPFLAGS="-I${LOCALBASE}/include"
PORTHOME=		${WRKDIR}

post-extract:
	@rm -rf ${WRKSRC}/jpeg ${WRKSRC}/png ${WRKSRC}/zlib

post-configure:
	@perl -pi -e "s,\\$$\\{DESTDIR},," ${WRKSRC}/config.h

NO_TEST=		Yes

.include <bsd.port.mk>
