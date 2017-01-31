# $OpenBSD: Makefile,v 1.34 2017/01/31 10:01:50 sthen Exp $

COMMENT=		Media Transfer Protocol (MTP) implementation

DISTNAME=		libmtp-1.1.12
CATEGORIES=		devel
REVISION=		1

SHARED_LIBS +=  mtp                  7.0      # 12.0

HOMEPAGE=		http://libmtp.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gcrypt gpg-error iconv intl pthread usb-1.0

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libmtp/}

LIB_DEPENDS=		devel/libusb1 \
			security/libgcrypt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-doxygen=no
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

FAKE_FLAGS=		pkgdocdir="${PREFIX}/share/doc/libmtp/"

.include <bsd.port.mk>
