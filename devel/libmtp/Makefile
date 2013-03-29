# $OpenBSD: Makefile,v 1.26 2013/03/29 23:39:13 brad Exp $

COMMENT=		Media Transfer Protocol (MTP) implementation

DISTNAME=		libmtp-1.1.6
REVISION=		0
CATEGORIES=		devel

SHARED_LIBS +=		mtp	6.0	# 10.0

HOMEPAGE=		http://libmtp.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c gcrypt gpg-error pthread usb-1.0

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libmtp/}

MODULES=		devel/gettext

BUILD_DEPENDS=		devel/doxygen
MAKE_ENV+=		DOXYGEN_ENCODE_PATH_STRIP=${WRKSRC}
LIB_DEPENDS=		devel/libusb1 \
			security/libgcrypt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-doxygen
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

FAKE_FLAGS+=		pkgdocdir="${PREFIX}/share/doc/libmtp/"

.include <bsd.port.mk>
