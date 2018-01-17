# $OpenBSD: Makefile,v 1.9 2018/01/17 08:31:14 bentley Exp $

COMMENT=		library for encoding data in a QR Code symbol

DISTNAME=		qrencode-4.0.0
PKGNAME=		lib${DISTNAME}

SHARED_LIBS +=  qrencode             2.0      # 4.0

CATEGORIES=		graphics

HOMEPAGE=		https://fukuchi.org/works/qrencode/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://fukuchi.org/works/qrencode/

WANTLIB += c m png pthread z

LIB_DEPENDS=		graphics/png

# only needed for tests
BUILD_DEPENDS=		converters/libiconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-tools \
			--with-tests \
			--with-sdl-prefix=/no
CONFIGURE_ENV+= 	LIBS=-pthread \
			png_CFLAGS="`pkg-config --cflags libpng`" \
			png_LIBS="`pkg-config --libs libpng`"

do-test:
	cd ${WRKSRC}/tests/ && ./test_all.sh

.include <bsd.port.mk>
