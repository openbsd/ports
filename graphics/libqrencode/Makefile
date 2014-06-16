# $OpenBSD: Makefile,v 1.4 2014/06/16 20:25:59 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		library for encoding data in a QR Code symbol

DISTNAME=		qrencode-3.1.1
PKGNAME=		lib${DISTNAME}
SHARED_LIBS +=  qrencode             0.0      # 3.1

CATEGORIES=		graphics

HOMEPAGE=		http://fukuchi.org/works/qrencode/index.en.html

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE:=/../}

WANTLIB += c m png z

LIB_DEPENDS=		graphics/png


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-tools \
			--with-tests \
			--with-sdl-prefix=/no
CONFIGURE_ENV+= 	png_CFLAGS="`pkg-config --cflags libpng`" \
			png_LIBS="`pkg-config --libs libpng`"

TEST_TARGETS= 	test_qrinput test_bitstream test_estimatebit \
			test_qrspec test_rs test_qrencode prof_qrencode \
			test_split test_monkey

do-test:
.for r in ${TEST_TARGETS}
	cd ${WRKSRC}/tests/ && ./$r
.endfor

.include <bsd.port.mk>
