# $OpenBSD: Makefile,v 1.5 2014/11/07 01:31:02 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		library for encoding data in a QR Code symbol

DISTNAME=		qrencode-3.4.4
PKGNAME=		lib${DISTNAME}

SHARED_LIBS +=  qrencode             1.0      # 3.1

CATEGORIES=		graphics

HOMEPAGE=		http://fukuchi.org/works/qrencode/index.en.html

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE:=/../}

WANTLIB += c m png z

LIB_DEPENDS=		graphics/png


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-thread-safety \
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
