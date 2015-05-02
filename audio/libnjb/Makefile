# $OpenBSD: Makefile,v 1.12 2015/05/02 20:53:18 ajacoutot Exp $

COMMENT=		communicate with some Creative and Dell audio players

DISTNAME=		libnjb-2.2.7
CATEGORIES=		audio devel

SHARED_LIBS +=  njb                  0.0      # 6.1

HOMEPAGE=		http://libnjb.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses pthread usb usb-1.0 z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libnjb/}

BUILD_DEPENDS=		devel/doxygen
LIB_DEPENDS=		devel/libusb-compat

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

FAKE_FLAGS=		pkgdocdir=${PREFIX}/share/doc/libnjb

.include <bsd.port.mk>
