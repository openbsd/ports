# $OpenBSD: Makefile,v 1.12 2019/07/12 20:47:02 sthen Exp $

COMMENT=		library for encoding data in a QR Code symbol

DISTNAME=		qrencode-4.0.2
PKGNAME=		lib${DISTNAME}

SHARED_LIBS +=  qrencode             2.0      # 4.0

CATEGORIES=		graphics

HOMEPAGE=		https://fukuchi.org/works/qrencode/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://fukuchi.org/works/qrencode/

WANTLIB += c m png pthread z

LIB_DEPENDS=		graphics/png

# only needed for tests
BUILD_DEPENDS=		converters/libiconv \
			devel/sdl2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-tools \
			--with-tests
CONFIGURE_ENV+=		LIBS=-pthread \
			png_CFLAGS="`pkg-config --cflags libpng`" \
			png_LIBS="`pkg-config --libs libpng`"

do-test:
	cd ${WRKSRC}/tests/ && ./test_all.sh

.include <bsd.port.mk>
