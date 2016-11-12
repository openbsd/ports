# $OpenBSD: Makefile,v 1.14 2016/11/12 20:50:41 jca Exp $

COMMENT=		communicate with some Creative and Dell audio players

DISTNAME=		libnjb-2.2.7
REVISION=		1
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
