# $OpenBSD: Makefile,v 1.11 2006/01/08 01:01:18 steven Exp $

COMMENT=	"color management library"

DISTNAME=	lcms-1.12
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	lcms	1.12
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lcms/}

HOMEPAGE=	http://www.littlecms.com/

LIB_DEPENDS+=	jpeg::graphics/jpeg \
		tiff::graphics/tiff

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m z

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lcms
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/lcms

.include <bsd.port.mk>
