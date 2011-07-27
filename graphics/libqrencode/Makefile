# $OpenBSD: Makefile,v 1.1.1.1 2011/07/27 15:30:49 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		library for encoding data in a QR Code symbol

DISTNAME=		qrencode-3.1.1
PKGNAME=		lib${DISTNAME}
SHARED_LIBS +=  qrencode             0.0      # 3.1

CATEGORIES=		graphics

HOMEPAGE=		http://fukuchi.org/works/qrencode/index.en.html

# LGPLv2.1
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE:=/../}

WANTLIB += c m png z

LIB_DEPENDS=		graphics/png

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-tools \
			--with-tests
CONFIGURE_ENV+= 	png_CFLAGS="`pkg-config --cflags libpng`" \
			png_LIBS="`pkg-config --libs libpng`"

REGRESS_TARGETS= 	test_qrinput test_bitstream test_estimatebit \
			test_qrspec test_rs test_qrencode prof_qrencode \
			test_split test_monkey

do-regress:
.for r in ${REGRESS_TARGETS}
	cd ${WRKSRC}/tests/ && ./$r
.endfor

.include <bsd.port.mk>
