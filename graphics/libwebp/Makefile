# $OpenBSD: Makefile,v 1.1.1.1 2011/12/22 08:36:33 ajacoutot Exp $

COMMENT=	Google WebP image format conversion tool

DISTNAME=	libwebp-0.1.3

SHARED_LIBS +=  webp                 0.0      # 2.0

CATEGORIES=	graphics

HOMEPAGE=	http://code.google.com/p/webp/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c jpeg m png z

MASTER_SITES=	http://webp.googlecode.com/files/

LIB_DEPENDS=	graphics/jpeg \
		graphics/png

USE_LIBTOOL=	Yes
USE_GROFF=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib -lm -lz"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
