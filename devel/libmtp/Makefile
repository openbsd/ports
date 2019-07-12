# $OpenBSD: Makefile,v 1.42 2019/07/12 20:44:39 sthen Exp $

COMMENT=		Media Transfer Protocol (MTP) implementation

DISTNAME=		libmtp-1.1.15
CATEGORIES=		devel

SHARED_LIBS +=  mtp                  7.0      # 12.0

HOMEPAGE=		http://libmtp.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c gcrypt gpg-error iconv intl pthread usb-1.0

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libmtp/}

COMPILER=		base-clang ports-gcc base-gcc
COMPILER_LANGS=		c
# avoid "libmtp.so.7.0: undefined reference to `.L2085'"
MODGCC4_ARCHS=		mips64 mips64el

LIB_DEPENDS=		devel/libusb1 \
			security/libgcrypt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-doxygen=no
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

FAKE_FLAGS=		pkgdocdir="${PREFIX}/share/doc/libmtp/"

.include <bsd.port.mk>
