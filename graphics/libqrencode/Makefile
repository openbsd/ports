# $OpenBSD: Makefile,v 1.6 2014/11/08 00:43:35 jturner Exp $

SHARED_ONLY=		Yes

COMMENT=		library for encoding data in a QR Code symbol

DISTNAME=		qrencode-3.4.4
REVISION=		0
PKGNAME=		lib${DISTNAME}

SHARED_LIBS +=  qrencode             1.0      # 3.4

CATEGORIES=		graphics

HOMEPAGE=		http://fukuchi.org/works/qrencode/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://fukuchi.org/works/qrencode/

WANTLIB += c m png pthread z

LIB_DEPENDS=		graphics/png

# only needed for tests
BUILD_DEPENDS=		converters/libiconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-tools \
			--with-tests \
			--with-sdl-prefix=/no
CONFIGURE_ENV+= 	LIBS=-pthread \
			png_CFLAGS="`pkg-config --cflags libpng`" \
			png_LIBS="`pkg-config --libs libpng`"

do-test:
	cd ${WRKSRC}/tests/ && ./test_all.sh

.include <bsd.port.mk>
