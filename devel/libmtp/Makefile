# $OpenBSD: Makefile,v 1.23 2013/03/11 10:50:10 espie Exp $

COMMENT=		Media Transfer Protocol (MTP) implementation

DISTNAME=		libmtp-1.1.5
SHARED_LIBS +=		mtp	5.1	# 9.5
CATEGORIES=		devel

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

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-doxygen
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib -pthread" \
			CPPFLAGS="-I${LOCALBASE}/include"

FAKE_FLAGS+=		pkgdocdir="${PREFIX}/share/doc/libmtp/"

.include <bsd.port.mk>
